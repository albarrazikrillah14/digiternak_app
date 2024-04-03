import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:digiternak_app/widget/qr_widget.dart';
import 'package:flutter/material.dart';
import 'package:digiternak_app/ui/features/fattening_livestocks/search/detail/livestock_detail.dart';

class FatteningSearchLiveStocksScreen extends StatefulWidget {
  static const routeName = '/fattening_search_livestock';
  const FatteningSearchLiveStocksScreen({Key? key}) : super(key: key);

  @override
  State<FatteningSearchLiveStocksScreen> createState() =>
      _FatteningSearchLiveStocksScreenState();
}

class _FatteningSearchLiveStocksScreenState
    extends State<FatteningSearchLiveStocksScreen> {
  final queryController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final String idLiveStock = "";

  @override
  void dispose() {
    super.dispose();
    queryController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Cari Sapi",
      isHasBackButton: true,
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: queryController,
                decoration: InputDecoration(
                  hintText: "Masukkan Kode Sapi",
                  suffixIcon: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, QRCodeWidget.routeName,
                          arguments: QRtype.livestocks);
                    },
                    icon: const Icon(
                      Icons.qr_code,
                      size: 24,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "query tidak boleh kosong";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              PrimaryButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Silahkan isi kode sapi terlebih dahulu"),
                      ),
                    );
                  }
                },
                title: "CARI TERNAK",
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Daftar Sapi yang tersedia",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Jumlah kolom dalam grid
                    crossAxisSpacing: 8, // Spasi antar kolom
                    mainAxisSpacing: 8, // Spasi antar baris
                    childAspectRatio: 1.1, // Rasio antara lebar dan tinggi item
                  ),
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          LivestockDetail.routeName,
                          arguments: "JKW123",
                        );
                      },
                      child: LivestockWidget(
                        id: "KLEJRKLEJRE",
                        image: "assets/ic_sapi.png",
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LivestockWidget extends StatelessWidget {
  final String id;
  final String image;
  const LivestockWidget({Key? key, required this.image, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Image.asset(
              image,
              width: MediaQuery.of(context).size.width,
              height: 100,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 8),
            Text(
              id,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
