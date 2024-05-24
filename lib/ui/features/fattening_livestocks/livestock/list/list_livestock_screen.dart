import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/provider/livestock/livestock_provider.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/livestock/home/home_livestock_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListLivestockScreen extends StatefulWidget {
  static const routeName = "/list_livestock_screen";
  const ListLivestockScreen({
    super.key,
  });

  @override
  State<ListLivestockScreen> createState() => _ListLivestockScreenState();
}

class _ListLivestockScreenState extends State<ListLivestockScreen> {
  late LivestockProvider provider;

  @override
  void initState() {
    super.initState();
    provider = context.read<LivestockProvider>();

    provider.getAllLivestock();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        title: "Daftar Ternak",
        body: ChangeNotifierProvider.value(
          value: provider,
          child: Consumer<LivestockProvider>(
            builder: (context, provider, child) {
              switch (provider.stateAllLivestock) {
                case ResultState.loading:
                  return loadingScreen();
                case ResultState.unauthorized:
                  return errorWidget(
                      context: context, type: ErrorType.unauthorization);
                case ResultState.noData:
                  return errorWidget(context: context, type: ErrorType.empty);
                case ResultState.error:
                  return errorWidget(
                    context: context,
                    message: provider.message,
                    onPress: () {
                      provider.getAllLivestock();
                    },
                  );
                case ResultState.hasData:
                  return Column(
                    children: provider.allLivestock.data!.map((it) {
                      return LivestockWidget(livestockData: it);
                    }).toList(),
                  );
              }
            },
          ),
        ));
  }
}
