import 'package:digiternak_app/ui/features/fattening_livestocks/cage/add_cage_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/add/livestock_add_notes_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/search/fattening_search_livestocks_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/feature_item_widget.dart';
import 'package:flutter/material.dart';

class FatteningHomeScreen extends StatelessWidget {
  static const routeName = '/fattening_home_screen';

  const FatteningHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Penggemukan",
      isHasBackButton: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/ic_sapi.png",
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FatteningFeatureWidget(
              data: [
                FeatureItem(image: "assets/ic_add.png", featureName: "Catatan"),
                FeatureItem(image: "assets/ic_cow.png", featureName: "Ternak"),
                FeatureItem(
                    image: "assets/ic_kandang.png", featureName: "Kandang"),
              ],
            )
          ],
        ),
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
                  Navigator.pushNamed(
                      context, LivestockAddNotesScreen.routeName);
                  break;
                case 1:
                  Navigator.pushNamed(
                      context, FatteningSearchLiveStocksScreen.routeName);
                case 2:
                  Navigator.pushNamed(context, AddCageScreen.routeName);
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
