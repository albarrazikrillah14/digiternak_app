import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/ui/dashboard/DashboardLivestockScreen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/home/fattening_home_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/detail/livestock_detail_notes_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/feature_item_widget.dart';
import 'package:digiternak_app/widget/note_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Home",
      indexBar: 0,
      isRoot: true,
      state: ResultState.hasData,
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                    context, DashboardLivestockScreen.routeName);
              },
              child: const HomeDashboardWidget(),
            ),
            const SizedBox(height: 20),
            LastNoteWidget(
              data: [
                NoteCard(
                    image: "assets/ic_sapi.png",
                    title: "Sapi x",
                    description:
                        "JLKJSLKJKSLDJKLSDJKALSJDKLSJDKLSAJDLSKJDLKASJDKLASJDLKSAJDKSALDJASKLDJSALKDJSALKDJSAKLDJSAKLJLKJDFLKJDF;DSJFKLDSJF;DSFJDSKLFJDS;FKDSJFLDKSFJDSLKJ",
                    date: "1 September 2024"),
                NoteCard(
                    image: "assets/ic_sapi.png",
                    title: "Sapi x",
                    description: "xxxx",
                    date: "1-1-2024"),
                NoteCard(
                    image: "assets/ic_sapi.png",
                    title: "Sapi x",
                    description: "xxxx",
                    date: "1-1-2024"),
                NoteCard(
                    image: "assets/ic_sapi.png",
                    title: "Sapi x",
                    description: "xxxx",
                    date: "1-1-2024"),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            HomeFeatureWidget(
              data: [
                FeatureItem(
                    image: "assets/ic_feature.png", featureName: "Peggemukan"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LastNoteWidget extends StatelessWidget {
  final List<NoteCard> data;
  const LastNoteWidget({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 230,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Catatan Terakhir",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LivestockDetailNotes.routeName,
                        arguments: data[index].title); // masukkan id
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: NoteCardWidget(data: data[index]),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class HomeFeatureWidget extends StatefulWidget {
  final List<FeatureItem> data;
  const HomeFeatureWidget({Key? key, required this.data}) : super(key: key);

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
          "Fitur Lainnya",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        SizedBox(
          height: 120,
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

class HomeDashboardWidget extends StatelessWidget {
  const HomeDashboardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 4,
            blurRadius: 4,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeDashboardItemWidget(
                    onTap: () {},
                    image: "assets/ic_kandang.png",
                    title: "1234",
                    type: "Kandang",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  HomeDashboardItemWidget(
                    onTap: () {},
                    image: "assets/ic_cow.png",
                    title: "1234",
                    type: "Ternak",
                  ),
                ],
              ),
              const Icon(Icons.arrow_right_alt),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeDashboardItemWidget extends StatelessWidget {
  final Function() onTap;
  final String image;
  final String title;
  final String type;
  const HomeDashboardItemWidget({
    Key? key,
    required this.onTap,
    required this.image,
    required this.title,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment
            .start, // Ubah ini menjadi CrossAxisAlignment.start
        children: [
          Image.asset(
            image,
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Jumlah $type"),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
