import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/provider/home/home_provider.dart';
import 'package:digiternak_app/provider/livestock/livestock_provider.dart';
import 'package:digiternak_app/provider/notes/notes_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/cage/list/list_cage_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/fattening_home_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/list/list_livestock_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/list/notes_livestock_list.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/feature_item_widget.dart';
import 'package:digiternak_app/widget/note_card_widget.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeProvider provider;

  @override
  void initState() {
    super.initState();
    provider = context.read<HomeProvider>();
    provider.getKandang();
    provider.getAllCatatan();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: provider,
      child: Consumer<HomeProvider>(
        builder: (context, provider, _) {
          if (provider.state == ResultState.unauthorized ||
              provider.stateDashboard == ResultState.unauthorized) {
            return Center(
              child: PrimaryButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, LoginScreen.routeName);
                },
                title: "Masuk Kembali",
              ),
            );
          }
          return BaseScreen(
            title: "Home",
            indexBar: 0,
            isRoot: true,
            state: ResultState.hasData,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              'assets/sapi${index + 1}.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      itemCount: 3,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const HomeDashboardWidget(),
                  const SizedBox(
                    height: 16,
                  ),
                  HomeFeatureWidget(
                    data: [
                      FeatureItem(
                          image: "assets/ic_feature.png",
                          featureName: "Peggemukan"),
                    ],
                  ),
                  const LastNoteWidget(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class LastNoteWidget extends StatefulWidget {
  const LastNoteWidget({
    super.key,
  });

  @override
  State<LastNoteWidget> createState() => _LastNoteWidgetState();
}

class _LastNoteWidgetState extends State<LastNoteWidget> {
  late NotesProvider provider;

  @override
  void initState() {
    super.initState();

    provider = context.read<NotesProvider>();
    provider.getNotesByUserId();

    if (provider.state == ResultState.unauthorized) {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: provider,
      child: Consumer<NotesProvider>(
        builder: (context, provider, child) {
          switch (provider.state) {
            case ResultState.loading:
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              );
            case ResultState.hasData:
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 230,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Catatan",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        TextButton(
                            onPressed: () {
                              if (provider.state == ResultState.noData) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text("Belum Ada Catatan")));
                              } else {
                                Navigator.pushNamed(
                                    context, NotesLiveStockList.routeName,
                                    arguments: provider.notes.data);
                              }
                            },
                            child: const Row(
                              children: [
                                Text(
                                  "Lihat Semuanya",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                ),
                                Icon(
                                  Icons.arrow_right,
                                  color: Colors.black,
                                ),
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                        child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final data = provider.notes.data[index];
                        return NoteCardWidget(data: data);
                      },
                      itemCount: provider.notes.data.length > 3
                          ? 3
                          : provider.notes.data.length,
                    )),
                  ],
                ),
              );

            default:
              return Container();
          }
        },
      ),
    );
  }
}

class HomeFeatureWidget extends StatefulWidget {
  final List<FeatureItem> data;
  const HomeFeatureWidget({super.key, required this.data});

  @override
  State<HomeFeatureWidget> createState() => _HomeFeatureWidgetState();
}

class _HomeFeatureWidgetState extends State<HomeFeatureWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Fitur",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.data.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.pushNamed(
                          context, FatteningHomeScreen.routeName);
                      break;
                    default:
                      break;
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: FeatureItemWidget(data: widget.data[index]),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

class HomeDashboardWidget extends StatefulWidget {
  const HomeDashboardWidget({super.key});

  @override
  State<HomeDashboardWidget> createState() => _HomeDashboardWidgetState();
}

class _HomeDashboardWidgetState extends State<HomeDashboardWidget> {
  late HomeProvider provider;
  late LivestockProvider livestockProvider;

  @override
  void initState() {
    super.initState();

    provider = context.read<HomeProvider>();
    livestockProvider = context.read<LivestockProvider>();
    livestockProvider.getAllLivestock();
    provider.getKandang();

    if (provider.state == ResultState.unauthorized) {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: provider,
      child: Consumer<HomeProvider>(
        builder: (context, state, _) {
          switch (state.state) {
            case ResultState.loading:
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              );

            case ResultState.hasData:
              return ChangeNotifierProvider.value(
                value: livestockProvider,
                child: Consumer<LivestockProvider>(
                  builder: (context, provider, child) {
                    switch (provider.stateAllLivestock) {
                      case ResultState.loading:
                        return const Center(
                          child: CircularProgressIndicator(
                            color: Colors.blue,
                          ),
                        );
                      case ResultState.hasData:
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, ListCageScreen.routeName,
                                    arguments: state.kandang.data);
                              },
                              child: _DashboardCard(
                                  title: "Kandang",
                                  value: "${state.kandang.data.length} Kandang",
                                  image: "assets/ic_kandang.png"),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, ListLivestockScreen.routeName,
                                    arguments: provider.allLivestock.data);
                              },
                              child: _DashboardCard(
                                  title: "Ternak",
                                  value:
                                      "${state.kandang.data.fold(0, (value, element) => value + (element.livestocks?.length ?? 0))} Ternak",
                                  image: "assets/ic_cow.png"),
                            )
                          ],
                        );
                      default:
                        return Container(
                          child: Text(provider.message),
                        );
                    }
                  },
                ),
              );

            default:
              return Container();
          }
        },
      ),
    );
  }

  Widget _DashboardCard(
      {required String title, required String value, required String image}) {
    return Container(
      width: (MediaQuery.of(context).size.width / 2) - 24,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 64,
            width: 64,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            value,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12),
          )
        ],
      ),
    );
  }
}
