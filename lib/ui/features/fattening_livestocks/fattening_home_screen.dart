import 'package:digiternak_app/data/locale/fattening_repository.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/cage/add_cage_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/add/add_note_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/home/home_livestock_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/container_widget.dart';
import 'package:digiternak_app/widget/dialog_widget.dart';
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
      title: "Penggemukan",
      isHasBackButton: true,
      body: SingleChildScrollView(
        child: FutureBuilder<bool>(
          future: repository.isTutorial(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator(
                color: Colors.blue,
              );
            } else {
              bool isTutorial = snapshot.data ?? true;
              return Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      "assets/ic_writing.jpeg",
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  !isTutorial
                      ? buildContainer(
                          context: context,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Alur Aplikasi ini adalah: "),
                              Divider(),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                  "1. Kamu harus memiliki kandang terlebih dahulu."),
                              Text(
                                  "2. Daftarkan ternak anda, serta menambahkan kandang terhadap ternak."),
                              Text("3. Lakukan Pencatatan."),
                            ],
                          ),
                          title: "Tutorial",
                          closeContainer: InkWell(
                            onTap: () {
                              showAlertDialog(
                                context: context,
                                title: "Tutorial",
                                messsage:
                                    "Apakah anda yakin untuk menghapus tutorial? setelah anda memencet Ya, tutorial tidak akan muncul lagi.",
                                onSuccess: () async {
                                  final result =
                                      await repository.removeTutorial();
                                  if (result) {
                                    setState(() {
                                      Navigator.pop(context);
                                    });
                                  }
                                },
                              );
                            },
                            child: const Icon(
                              Icons.close,
                              color: Colors.red,
                            ),
                          ),
                        )
                      : Container(),
                  const SizedBox(
                    height: 20,
                  ),
                  FatteningFeatureWidget(
                    data: [
                      FeatureItem(
                          image: "assets/ic_add.png", featureName: "Catatan"),
                      FeatureItem(
                          image: "assets/ic_cow.png", featureName: "Ternak"),
                      FeatureItem(
                          image: "assets/ic_kandang.png",
                          featureName: "Kandang"),
                    ],
                  )
                ],
              );
            }
          },
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
                  Navigator.pushNamed(context, AddNoteScreen.routeName);
                  break;
                case 1:
                  Navigator.pushNamed(context, HomeLivestockScreen.routeName);
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
