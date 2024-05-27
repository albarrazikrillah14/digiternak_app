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
  final bool isHasAppBar;
  const BaseScreen({
    super.key,
    required this.title,
    this.isHasBackButton = false,
    required this.body,
    this.indexBar = 0,
    this.isRoot = false,
    this.isHasAppBar = true,
  });

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  void initState() {
    super.initState();
  }

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
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white, fontSize: 24),
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
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            color: Color.fromRGBO(240, 242, 245, 1),
          ),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: widget.body,
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: widget.isRoot
          ? FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, QRCodeWidget.routeName,
                    arguments: QRtype.livestocks);
              },
              elevation: 0,
              backgroundColor: Colors.transparent,
              child: const Icon(
                Icons.qr_code_scanner_sharp,
                size: 60,
                color: Colors.blue,
              ),
            )
          : null,
      bottomNavigationBar: widget.isRoot
          ? BottomNavigationBar(
              backgroundColor: const Color.fromRGBO(240, 242, 245, 1),
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
                    Navigator.pushAndRemoveUntil(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const HomeScreen(),
                        transitionDuration: const Duration(seconds: 0),
                      ),
                      (route) => false,
                    );
                    break;
                  case 1:
                    Navigator.pushAndRemoveUntil(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const ProfileScreen(),
                        transitionDuration: const Duration(seconds: 0),
                      ),
                      (route) => false,
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
