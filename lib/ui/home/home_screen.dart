import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/cage/response/cages_response.dart';
import 'package:digiternak_app/data/model/notes/response/notes_response.dart';
import 'package:digiternak_app/provider/cage/cage_provider.dart';
import 'package:digiternak_app/provider/notes/notes_provider.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/cage/list/list_cage_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/fattening_home_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/list/list_livestock_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/list/list_notes_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/custom_row.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/feature_item_widget.dart';
import 'package:digiternak_app/widget/image_rounded.dart';
import 'package:digiternak_app/widget/loading_screen.dart';
import 'package:digiternak_app/widget/note_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late CageProvider cageProvider;
  late NotesProvider notesProvider;

  @override
  void initState() {
    super.initState();
    cageProvider = context.read<CageProvider>();
    cageProvider.getAllCage();

    notesProvider = context.read<NotesProvider>();
    notesProvider.getNotesByUserId();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Home",
      indexBar: 0,
      isRoot: true,
      body: ChangeNotifierProvider.value(
        value: cageProvider,
        child: Consumer<CageProvider>(
          builder: (context, provider, child) {
            switch (provider.stateCages) {
              case ResultState.unauthorized:
                return errorWidget(
                    context: context, type: ErrorType.unauthorization);
              case ResultState.loading:
                return loadingScreen();
              default:
                return Column(
                  children: [
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: ImageRounded(
                              image: 'assets/sapi${index + 1}.jpeg',
                              width: MediaQuery.of(context).size.width - 100,
                            ),
                          );
                        },
                        itemCount: 3,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    (provider.cages == null)
                        ? Container()
                        : HomeDashboardWidget(data: provider.cages!),
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
                    ChangeNotifierProvider.value(
                      value: notesProvider,
                      child: Consumer<NotesProvider>(
                        builder: (context, provider, child) {
                          switch (provider.state) {
                            case ResultState.loading:
                              return loadingScreen();
                            case ResultState.hasData:
                              return LastNoteWidget(
                                data: provider.notes,
                              );
                            default:
                              return Container();
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                );
            }
          },
        ),
      ),
    );
  }
}

class LastNoteWidget extends StatefulWidget {
  final NotesResponse data;
  const LastNoteWidget({
    super.key,
    required this.data,
  });

  @override
  State<LastNoteWidget> createState() => _LastNoteWidgetState();
}

class _LastNoteWidgetState extends State<LastNoteWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.data.error == true) {
      return Container();
    }
    if (widget.data.data?.isEmpty ?? true) {
      return Container();
    }
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 317,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRow(
            title: 'Catatan',
            value: 'Lihat semuanya',
            suffixWidget: InkWell(
              onTap: () {
                Navigator.pushNamed(context, ListNotesScreen.routeName,
                    arguments: widget.data.data);
              },
              child: const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final data = widget
                  .data.data![(widget.data.data?.length ?? 0) - index - 1];
              return Container(
                width: MediaQuery.of(context).size.width * 0.8,
                margin: const EdgeInsets.only(right: 16),
                child: NoteCardWidget(data: data),
              );
            },
            itemCount:
                widget.data.data!.length > 3 ? 3 : widget.data.data!.length,
          )),
        ],
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
        Text(
          "Fitur",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 16),
        ),
        SizedBox(
          height: 121,
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
        ),
      ],
    );
  }
}

class HomeDashboardWidget extends StatefulWidget {
  final CagesResponse data;
  const HomeDashboardWidget({super.key, required this.data});

  @override
  State<HomeDashboardWidget> createState() => _HomeDashboardWidgetState();
}

class _HomeDashboardWidgetState extends State<HomeDashboardWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              ListCageScreen.routeName,
            );
          },
          child: _DashboardCard(
              title: "Kandang",
              value: "${widget.data.data?.length ?? 0} Kandang",
              image: "assets/ic_kandang.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              ListLivestockScreen.routeName,
            );
          },
          child: _DashboardCard(
              title: "Ternak",
              value:
                  "${widget.data.data!.fold(0, (value, element) => value + (element.livestocks?.length ?? 0))} Ternak",
              image: "assets/ic_cow.png"),
        )
      ],
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
