import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/provider/cage/cage_provider.dart';
import 'package:digiternak_app/ui/dashboard/dashboard_livestock_screen.dart';
import 'package:digiternak_app/ui/features/cage/detail_cage_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListCageScreen extends StatefulWidget {
  static const routeName = '/list_cage_screen';

  const ListCageScreen({super.key});

  @override
  State<ListCageScreen> createState() => _ListCageScreenState();
}

class _ListCageScreenState extends State<ListCageScreen> {
  late CageProvider provider;

  @override
  void initState() {
    super.initState();
    provider = context.read<CageProvider>();
    provider.getCages();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Daftar Kandang",
      body: ChangeNotifierProvider.value(
        value: provider,
        child: Consumer<CageProvider>(
          builder: (context, provider, child) {
            switch (provider.stateCages) {
              case ResultState.loading:
                return loadingScreen();
              case ResultState.unauthorized:
                return errorWidget(
                    context: context, type: ErrorType.unauthorization);
              case ResultState.hasData:
                return Column(
                  children: provider.cages!.data!.map((it) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, DetailCageScreen.routeName,
                            arguments: "${it.id}");
                      },
                      child: KandangLiveStockScreen(
                        data: KandangData(
                          id: "${it.id}",
                          name: it.name ?? "",
                          jumlahSapi: it.livestocks?.length ?? 0,
                          lokasi: it.location ?? "",
                        ),
                      ),
                    );
                  }).toList(),
                );
              case ResultState.error:
                return errorWidget(
                  context: context,
                  message: provider.message,
                  onPress: () {
                    provider.getCages();
                  },
                );
              case ResultState.noData:
                return errorWidget(context: context, type: ErrorType.empty);
            }
          },
        ),
      ),
    );
  }
}
