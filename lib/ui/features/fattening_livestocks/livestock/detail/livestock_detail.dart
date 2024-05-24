import 'package:digiternak_app/common/constant.dart';
import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/common/utils/mapper/mapper.dart';
import 'package:digiternak_app/data/model/livestock/response/data/livestock_data.dart';
import 'package:digiternak_app/provider/livestock/livestock_provider.dart';
import 'package:digiternak_app/provider/notes/notes_provider.dart';
import 'package:digiternak_app/ui/detail_image/detail_image_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/update/update_livestock_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/list/list_notes_screen.dart';
import 'package:digiternak_app/ui/qr_code/qrcode_screen.dart';
import 'package:digiternak_app/ui/upload/upload_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/custom_row.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/image_rounded.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:digiternak_app/widget/snackbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

class LivestockDetail extends StatefulWidget {
  static const routeName = "/livestock_detail";
  final LivestockData? data;
  const LivestockDetail({super.key, required this.data});

  @override
  State<LivestockDetail> createState() => _LivestockDetailState();
}

class _LivestockDetailState extends State<LivestockDetail> {
  late LivestockProvider provider;
  late NotesProvider notesProvider;
  final String BASE_IMAGE_URL = dotenv.env["BASE_IMAGE_URL"]!;

  @override
  void initState() {
    super.initState();
    provider = context.read<LivestockProvider>();
    notesProvider = context.read<NotesProvider>();
    notesProvider.getNotesByLivestockId(widget.data?.id ?? 0);
    provider.setDeleteState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        title: "Detail Ternak",
        isHasBackButton: true,
        body: ChangeNotifierProvider.value(
          value: provider,
          child: Consumer<LivestockProvider>(
            builder: (context, provider, child) {
              switch (provider.deleteState) {
                case ResultState.error:
                  return errorWidget(
                      context: context,
                      message: provider.message,
                      onPress: () {
                        provider.setDeleteState();
                      });
                case ResultState.unauthorized:
                  return errorWidget(
                      context: context, type: ErrorType.unauthorization);
                case ResultState.loading:
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  );
                case ResultState.hasData:
                  return const Center(
                    child: Text("Data tidak ditemukan"),
                  );
                case ResultState.noData:
                  if (widget.data == null) {
                    return const Center(
                      child: Text("Data tidak ditemukan"),
                    );
                  }
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          (widget.data?.images?.isEmpty ?? true)
                              ? ImageRounded(
                                  image: "assets/ic_sapi.png",
                                  height: 200,
                                  width: MediaQuery.of(context).size.width)
                              : ImageRounded(
                                  image:
                                      "$BASE_IMAGE_URL${widget.data?.images?[0] ?? ""}",
                                  height: 200,
                                  width: MediaQuery.of(context).size.width,
                                  sourceType: ImageSourceType.network,
                                ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Divider(),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, QRCodeScreen.routeName,
                                  arguments: widget.data?.vid ?? "");
                            },
                            child: CustomRow(
                              title: "Kode ternak",
                              value: widget.data?.vid ?? "",
                              suffixWidget: const Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          CustomRow(
                              title: "Nama kandang",
                              value: widget.data?.cage.name ?? ""),
                          CustomRow(
                              title: "Jenis ternak",
                              value: widget.data?.typeOfLivestock.name ?? ""),
                          CustomRow(
                              title: "Nama ternak",
                              value: widget.data?.name ?? ""),
                          CustomRow(
                              title: "Tanggal lahir",
                              value:
                                  formatTanggal(widget.data?.birthdate ?? "")),
                          CustomRow(
                              title: "Umur",
                              value: "${widget.data?.age ?? ""} Tahun"),
                          CustomRow(
                              title: "Tempat lahir",
                              value: widget.data?.breedOfLivestock.name ?? ""),
                          CustomRow(
                              title: "Sumber ternak",
                              value: widget.data?.source.name ?? ""),
                          CustomRow(
                              title: "Kelamin",
                              value: widget.data?.gender ?? ""),
                          widget.data?.gender != "Jantan"
                              ? CustomRow(
                                  title: 'Bunting',
                                  value: widget.data?.reproduction.name ?? "")
                              : Container(),
                          CustomRow(
                              title: "Lingkar dada",
                              value: widget.data?.chestSize ?? ""),
                          CustomRow(
                              title: "Berat badan",
                              value: widget.data?.bodyWeight ?? ""),
                          CustomRow(
                              title: 'Kondisi ternak',
                              value: widget.data?.health ?? ""),
                          CustomRow(
                              title: "Tipe kandang",
                              value: widget.data?.typeOfCage.name ?? ""),
                          CustomRow(
                              title: "Status kepemilikan",
                              value: widget.data?.ownership.name ?? ""),
                          ChangeNotifierProvider.value(
                            value: notesProvider,
                            child: Consumer<NotesProvider>(
                              builder: (context, provider, child) {
                                switch (provider.state) {
                                  case ResultState.hasData:
                                    return InkWell(
                                      onTap: () {
                                        if (provider.notes.data?.isNotEmpty ??
                                            false) {
                                          Navigator.pushNamed(
                                            context,
                                            ListNotesScreen.routeName,
                                            arguments: provider.notes.data,
                                          );
                                        } else {
                                          snackBar(
                                              context: context,
                                              message: "Data Kosong");
                                        }
                                      },
                                      child: CustomRow(
                                        title: "Catatan",
                                        value:
                                            "${provider.notes.data?.length ?? 0}",
                                        suffixWidget: const Icon(
                                          Icons.keyboard_arrow_right,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    );
                                  default:
                                    return Container();
                                }
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      context, UploadScreen.routeName,
                                      arguments: {
                                        'type': UploadType.LVIESTOCK,
                                        'id': "${widget.data?.id ?? 0}",
                                      });
                                },
                                child: const Icon(Icons.add),
                              ),
                            ],
                          ),
                          !(widget.data?.images?.isEmpty ?? true)
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 150,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            widget.data?.images?.length ?? 0,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(context,
                                                  DetailImageScreen.routeName,
                                                  arguments:
                                                      widget.data!.images);
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.all(8),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                child: Image.network(
                                                    "$BASE_IMAGE_URL${widget.data!.images![index]}"),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          PrimaryButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, UpdateLivestockScreen.routeName,
                                    arguments: widget.data);
                              },
                              title: "Ubah Data Ternak"),
                          const SizedBox(
                            height: 16,
                          ),
                          PrimaryButton(
                            onPressed: () async {
                              await provider
                                  .deleteLivestock(widget.data?.id ?? 0);

                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(provider.message)));

                              if (provider.deleteState == ResultState.hasData) {
                                Navigator.pop(context);
                              }
                            },
                            title: "Hapus Ternak",
                            type: ButtonType.Delete,
                          ),
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
