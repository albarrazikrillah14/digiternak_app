import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/provider/feature/fattening/cage_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KandangDetailScreen extends StatefulWidget {
  static const routeName = "/kandang_detail_screen";
  final String id;
  const KandangDetailScreen({super.key, required this.id});

  @override
  State<KandangDetailScreen> createState() => _KandangDetailScreenState();
}

class _KandangDetailScreenState extends State<KandangDetailScreen> {
  late CageProvider provider;

  @override
  void initState() {
    super.initState();

    provider = context.read<CageProvider>();
    provider.getCageById(int.parse(widget.id));

    if (provider.stateCage == ResultState.unauthorized) {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    }
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
                            child: Image.asset("assets/ic_kandang_sapi.jpeg"),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            provider.cage?.name ?? "",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            provider.cage?.description ?? "",
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      PrimaryButton(
                        onPressed: () async {},
                        title: "Hapus Kandang",
                        type: ButtonType.Delete,
                      )
                    ],
                  );
                case ResultState.error:
                  return Center(
                    child: Text(provider.message),
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
