import 'package:digiternak_app/common/constant.dart';
import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/livestock/response/data/livestock_data.dart';
import 'package:digiternak_app/provider/livestock/livestock_provider.dart';
import 'package:digiternak_app/provider/notes/notes_provider.dart';
import 'package:digiternak_app/ui/detail_image/detail_image_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/update/update_livestock_screen.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/notes/list/list_notes_screen.dart';
import 'package:digiternak_app/ui/upload/upload_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:digiternak_app/widget/snackbar_widget.dart';
import 'package:flutter/material.dart';
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
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: (widget.data?.images?.isEmpty ?? true)
                              ? Image.asset("assets/ic_sapi.png",
                                  height: 200,
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.fill)
                              : Image.network(
                                  "$BASE_IMAGE_URL${widget.data!.images![0]}",
                                  height: 200,
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.fill),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Divider(),
                        _buildInfoRow(
                            title: "VID", value: widget.data?.vid ?? ""),
                        _buildInfoRow(
                            title: "Nama Kandang",
                            value: widget.data?.cage.name ?? ""),
                        _buildInfoRow(
                            title: "Jenis ternak",
                            value: widget.data?.typeOfLivestock.name ?? ""),
                        _buildInfoRow(
                            title: "Nama Ternak",
                            value: widget.data?.name ?? ""),
                        _buildInfoRow(
                            title: "Tanggal Lahir",
                            value: widget.data?.birthdate ?? ""),
                        _buildInfoRow(
                            title: "Tempat Lahir",
                            value: widget.data?.breedOfLivestock.name ?? ""),
                        _buildInfoRow(
                            title: "Sumber Sapi",
                            value: widget.data?.source.name ?? ""),
                        _buildInfoRow(
                            title: "Kelamin", value: widget.data?.gender ?? ""),
                        _buildInfoRow(
                            title: "Lingkar Dada",
                            value: widget.data?.chestSize ?? ""),
                        _buildInfoRow(
                            title: "Berat Badan",
                            value: widget.data?.bodyWeight ?? ""),
                        _buildInfoRow(
                            title: "Tipe Kandang",
                            value: widget.data?.typeOfCage.name ?? ""),
                        _buildInfoRow(
                            title: "Status Kepemilikan",
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
                                    child: _buildInfoRow(
                                        title: "Jumlah Catatan",
                                        value:
                                            "${provider.notes.data?.length ?? 0}",
                                        isRightButton: true),
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
                            const Text(
                              "Dokumentasi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                                arguments: widget.data!.images);
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
                        const SizedBox(
                          height: 16,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 4,
                        ),
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
                        )
                      ],
                    ),
                  );
              }
            },
          ),
        ));
  }

  Widget _buildInfoRow(
      {required String title,
      required String value,
      bool isRightButton = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.grey),
              ),
              const SizedBox(
                width: 64,
              ),
              Flexible(
                child: isRightButton
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            value,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 10,
                          ),
                          Image.asset(
                            'assets/ic_arrow_right.png',
                            width: 16,
                            height: 16,
                          ),
                        ],
                      )
                    : Text(
                        value,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 10,
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
