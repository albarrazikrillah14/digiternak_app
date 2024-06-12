import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/provider/cage/cage_provider.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/custom_row.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailCageScreen extends StatefulWidget {
  static const routeName = "/detail_cage_screen";
  final String id;
  const DetailCageScreen({super.key, required this.id});

  @override
  State<DetailCageScreen> createState() => _DetailCageScreenState();
}

class _DetailCageScreenState extends State<DetailCageScreen> {
  late CageProvider provider;

  @override
  void initState() {
    super.initState();

    provider = context.read<CageProvider>();
    provider.getCageById(int.parse(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "KandangKu",
      isHasBackButton: true,
      body: ChangeNotifierProvider.value(
        value: provider,
        child: Consumer<CageProvider>(
          builder: (context, provider, child) {
            switch (provider.stateCage) {
              case ResultState.unauthorized:
                return errorWidget(
                    context: context, type: ErrorType.unauthorization);
              case ResultState.loading:
                return loadingScreen();
              case ResultState.hasData:
                return Column(
                  children: [
                    CustomRow(
                        title: 'Id kandang',
                        value: "${provider.cage?.data?.id ?? ""}"),
                    CustomRow(
                      title: 'Nama kandang',
                      value: provider.cage?.data?.name ?? "",
                    ),
                    CustomRow(
                      title: 'Lokasi kandang',
                      value: provider.cage?.data?.location ?? "",
                    ),
                    CustomRow(
                        title: 'Jumlah ternak',
                        value:
                            "${provider.cage?.data?.livestocks?.length ?? 0}"),
                    CustomRow(
                        title: 'Detail',
                        value: provider.cage?.data?.description ?? ""),
                  ],
                );

              case ResultState.error:
                return errorWidget(
                  context: context,
                  message: provider.message,
                );
              default:
                return Container();
            }
          },
        ),
      ),
    );
  }
}
