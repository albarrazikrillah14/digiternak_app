import 'package:digiternak_app/common/styles/styles.dart';
import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/ui/auth/register/register_screen.dart';
import 'package:digiternak_app/ui/home/home_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/SplashScreen';

  final AuthProvider authProvider;
  const SplashScreen({Key? key, required this.authProvider}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  void navigate() async {
    final isLoggedIn = await widget.authProvider.isLoggedIn();
    Future.delayed(const Duration(seconds: 2), () {
      if (isLoggedIn.isNotEmpty) {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      } else {
        Navigator.pushReplacementNamed(context, LoginScreen.routeName);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 32,
            ),
            Center(
              child: Image.asset(
                "assets/digi_ternak_logo.png",
                height: 266,
                scale: 1,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Healthy cow quality cow',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            PrimaryButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, RegisterScreen.routeName);
                },
                title: "MULAI"),
            const SizedBox(
              height: 64,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, LoginScreen.routeName);
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(color: secondaryColor),
                  ),
                )
              ],
            ),
            const Spacer(),
            const Center(
              child: Column(
                children: [
                  Text(
                    "CSN Ilmu Komputer IPB 2024",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "Versi 1.0.0",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
