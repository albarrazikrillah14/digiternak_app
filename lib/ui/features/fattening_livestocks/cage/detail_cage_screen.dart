import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/provider/cage/cage_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/primary_button.dart';
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
      body: SingleChildScrollView(
        child: ChangeNotifierProvider.value(
          value: provider,
          child: Consumer<CageProvider>(
            builder: (context, provider, child) {
              switch (provider.stateCage) {
                case ResultState.unauthorized:
                  return Center(
                    child: PrimaryButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, LoginScreen.routeName);
                      },
                      title: "Masuk Kembali",
                    ),
                  );
                case ResultState.loading:
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  );
                case ResultState.hasData:
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset("assets/ic_sapi.png"),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            provider.cage?.data?.name ?? "",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            provider.cage?.data?.location ?? "",
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              const Text("Jumlah Ternak: "),
                              Text(
                                  "${provider.cage?.data?.livestocks?.length ?? 0}")
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            provider.cage?.data?.description ?? "",
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
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
      ),
    );
  }
}
