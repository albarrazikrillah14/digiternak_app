import 'package:digiternak_app/ui/features/fattening_livestocks/notes/notes_home_livestock.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/search/fattening_search_livestocks_screen.dart';
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
              height: 16,
            ),
            FatteningFeatureWidget(
              data: [
                FeatureItem(
                    image: "assets/ic_add.png", featureName: "Tambah Catatan"),
                FeatureItem(
                    image: "assets/ic_search.png", featureName: "Cari Ternak"),
                FeatureItem(
                    image: "assets/ic_add.png", featureName: "Tambah Ternak"),
                FeatureItem(
                    image: "assets/ic_add.png", featureName: "Tambah Kandang"),
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
  const FatteningFeatureWidget({Key? key, required this.data})
      : super(key: key);

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
                  Navigator.pushNamed(context, NotesHomeLiveStock.routeName);
                  break;
                case 1:
                  Navigator.pushNamed(
                      context, FatteningSearchLiveStocksScreen.routeName);
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
