import 'package:digiternak_app/widget/base_screen.dart';
import 'package:flutter/material.dart';

class LivestockDetail extends StatefulWidget {
  static const routeName = "/livestock_detail";
  final String id;
  const LivestockDetail({Key? key, required this.id}) : super(key: key);

  @override
  State<LivestockDetail> createState() => _LivestockDetailState();
}

class _LivestockDetailState extends State<LivestockDetail> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Detail Ternak",
      isHasBackButton: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset("assets/ic_sapi.png",
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Kode Sapi'),
                Text("JKW12344"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Nomor Kandang'),
                Text("AB001"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Umur'),
                Text("2 tahun"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Kelamin'),
                Text("Jantan"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Anakan Ke-'),
                Text("1"),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text("Deskripsi Sapi"),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel fringilla sapien. Ut ornare lacus in odio convallis lobortis. Ut ornare vitae dolor id laoreet. Phasellus at elementum diam. Vestibulum in dolor lacinia, rhoncus erat vitae, fringilla turpis. Nullam iaculis tincidunt vulputate. Aliquam erat volutpat. Sed porta ullamcorper massa, eget viverra lectus lacinia non.'),
            const SizedBox(
              height: 16,
            ),
            const Text("Dokumentasi"),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset("assets/ic_sapi.png"),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Perkiraan Harga'),
                Text("Rp.10.000.000,00"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
