import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/ui/home/home_screen.dart';
import 'package:digiternak_app/ui/profile/profile_screen.dart';
import 'package:digiternak_app/widget/qr_widget.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  final String title;
  final Widget body;
  final bool isHasBackButton;
  final int indexBar;
  final bool isRoot;
  final ResultState state;
  final bool isHasAppBar;
  const BaseScreen({
    Key? key,
    required this.title,
    this.isHasBackButton = false,
    required this.body,
    this.indexBar = 0,
    this.isRoot = false,
    this.state = ResultState.noData,
    this.isHasAppBar = true,
  }) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  String barcode = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: widget.isHasAppBar
          ? AppBar(
              backgroundColor: Colors.blue,
              title: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.title,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              leading: widget.isHasBackButton
                  ? IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  : null,
            )
          : null,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            color: Colors.white),
        child: (() {
          switch (widget.state) {
            case ResultState.hasData:
              return widget.body;
            case ResultState.noData:
              return widget.body;
            case ResultState.error:
              return const Center(child: Text('Terjadi Kesahalan'));
            case ResultState.loading:
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.black,
              ));
            default:
              return Container();
          }
        })(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, QRCodeWidget.routeName,
              arguments: QRtype.livestocks);
        },
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: widget.isRoot
            ? const Icon(
                Icons.qr_code_scanner_sharp,
                size: 60,
                color: Colors.blue,
              )
            : null,
      ),
      bottomNavigationBar: widget.isRoot
          ? BottomNavigationBar(
              backgroundColor: Colors.white,
              currentIndex: widget.indexBar,
              iconSize: 20,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle), label: "Profile"),
              ],
              onTap: (index) {
                switch (index) {
                  case 0:
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const HomeScreen(),
                        transitionDuration: const Duration(seconds: 0),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const ProfileScreen(),
                        transitionDuration: const Duration(seconds: 0),
                      ),
                    );
                    break;
                  default:
                    break;
                }
              },
            )
          : null,
    );
  }
}
