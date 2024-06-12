import 'package:digiternak_app/data/locale/fattening_repository.dart';
import 'package:digiternak_app/ui/features/cage/add_cage_screen.dart';
import 'package:digiternak_app/ui/features/livestock/add_livestock_screen.dart';
import 'package:digiternak_app/ui/features/notes/bcs/add/add_bcs_screen.dart';
import 'package:digiternak_app/ui/features/notes/food/add/add_note_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/feature_item_widget.dart';
import 'package:flutter/material.dart';

class FatteningHomeScreen extends StatefulWidget {
  static const routeName = '/fattening_home_screen';

  const FatteningHomeScreen({super.key});

  @override
  State<FatteningHomeScreen> createState() => _FatteningHomeScreenState();
}

class _FatteningHomeScreenState extends State<FatteningHomeScreen> {
  late FatteningRepository repository;
  bool? isTutorial;

  @override
  void initState() {
    super.initState();
    repository = FatteningRepository();
    getTutorial();
  }

  void getTutorial() async {
    isTutorial = await repository.isTutorial();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Pencatatan",
      isHasBackButton: true,
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "assets/ic_writing.jpeg",
              width: MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          FatteningFeatureWidget(
            data: [
              FeatureItem(image: "assets/ic_grass.png", featureName: "Pakan"),
              FeatureItem(
                  image: "assets/ic_cow.png", featureName: "Kondisi Ternak"),
            ],
          )
        ],
      ),
    );
  }
}

class FatteningFeatureWidget extends StatefulWidget {
  final List<FeatureItem> data;
  const FatteningFeatureWidget({super.key, required this.data});

  @override
  State<FatteningFeatureWidget> createState() => _FatteningFeatureWidgetState();
}

class _FatteningFeatureWidgetState extends State<FatteningFeatureWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(widget.data.length, (index) {
          return InkWell(
            onTap: () {
              switch (index) {
                case 0:
                  Navigator.pushNamed(context, AddNoteScreen.routeName);
                  break;
                case 1:
                  Navigator.pushNamed(context, AddBcsScreen.routeName);

                default:
                  break;
              }
            },
            child: FeatureItemWidget(
              data: widget.data[index],
            ),
          );
        }),
      ),
    );
  }
}
