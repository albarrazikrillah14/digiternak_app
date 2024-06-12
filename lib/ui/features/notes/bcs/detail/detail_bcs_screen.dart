import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/common/utils/mapper/mapper.dart';
import 'package:digiternak_app/data/model/bcs/response/data/bcs_data.dart';
import 'package:digiternak_app/provider/bcs/bcs_provider.dart';
import 'package:digiternak_app/ui/detail_image/detail_image_screen.dart';
import 'package:digiternak_app/ui/features/notes/bcs/edit/edit_bcs_screen.dart';
import 'package:digiternak_app/ui/home/home_screen.dart';
import 'package:digiternak_app/ui/upload/upload_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/custom_row.dart';
import 'package:digiternak_app/widget/loading_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

class DetailBcsScreen extends StatefulWidget {
  final BcsData data;
  const DetailBcsScreen({super.key, required this.data});

  static const routeName = "/detail_bcs_screen";

  @override
  State<DetailBcsScreen> createState() => _DetailBcsScreenState();
}

class _DetailBcsScreenState extends State<DetailBcsScreen> {
  final String BASE_IMAGE_URL = dotenv.env["BASE_IMAGE_URL"]!;

  late BcsProvider bcsProvider;
  @override
  void initState() {
    super.initState();

    bcsProvider = context.read<BcsProvider>();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        title: "Detail BCS",
        body: ChangeNotifierProvider.value(
          value: bcsProvider,
          child: Consumer<BcsProvider>(
            builder: (context, provider, child) {
              switch (provider.deleteBcsState) {
                case ResultState.loading:
                  return LoadingScreen();
                default:
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Column(
                            children: [
                              CustomRow(
                                title: 'Tanggal',
                                value: formatTanggal(widget.data.createdAt),
                              ),
                              (widget.data.updatedAt != widget.data.createdAt)
                                  ? CustomRow(
                                      title: 'Dibuah',
                                      value:
                                          formatTanggal(widget.data.updatedAt),
                                    )
                                  : Container(),
                              CustomRow(
                                  title: 'Berat',
                                  value: "${widget.data.bodyWeight} Kg"),
                              CustomRow(
                                title: 'Ukuran dada',
                                value: "${widget.data.chestSize} cm",
                              ),
                              CustomRow(
                                title: 'Ukuran pinggul',
                                value: "${widget.data.hips} cm",
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Dokumentasi",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(fontSize: 16),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushReplacementNamed(
                                        context,
                                        UploadScreen.routeName,
                                        arguments: {
                                          'type': UploadType.BCS,
                                          'id': "${widget.data.id}",
                                        },
                                      );
                                    },
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              (widget.data.images?.isEmpty ?? true)
                                  ? Container()
                                  : Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(context,
                                                DetailImageScreen.routeName,
                                                arguments: widget.data.images);
                                          },
                                          child: SizedBox(
                                            height: 120,
                                            child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.all(4),
                                                  child: Image.network(
                                                    "$BASE_IMAGE_URL${widget.data.images![index]}",
                                                    height: 120,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            2,
                                                    fit: BoxFit.cover,
                                                  ),
                                                );
                                              },
                                              itemCount:
                                                  widget.data.images?.length ??
                                                      0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          PrimaryButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, EditBcsScreen.routeName,
                                    arguments: widget.data);
                              },
                              title: "Ubah"),
                          const SizedBox(
                            height: 16,
                          ),
                          PrimaryButton(
                            onPressed: () async {
                              await bcsProvider.deleteBcsById(widget.data.id);
                              if (provider.deleteBcsState ==
                                  ResultState.hasData) {
                                Navigator.restorablePushNamedAndRemoveUntil(
                                    context,
                                    HomeScreen.routeName,
                                    (route) => false);
                              }
                            },
                            title: "Hapus",
                            type: ButtonType.Delete,
                          )
                        ],
                      )
                    ],
                  );
              }
            },
          ),
        ));
  }
}
