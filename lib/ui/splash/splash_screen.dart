import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/ui/auth/register/register_screen.dart';
import 'package:digiternak_app/ui/home/home_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:digiternak_app/widget/primary_row.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/SplashScreen';

  final AuthProvider authProvider;
  const SplashScreen({super.key, required this.authProvider});

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
    if (isLoggedIn.isNotEmpty) {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    } else {
      Navigator.pushReplacementNamed(context, SplashScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/digi_ternak_logo.png",
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Temukan solusi terbaik untuk pencatatan pakan sapi Anda dengan aplikasi modern. Manajemen pakan ternak menjadi lebih mudah dan efisien.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 64,
              ),
              PrimaryButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, RegisterScreen.routeName);
                  },
                  title: 'Daftar'),
              PrimaryRow(
                label: 'Sudah punya akun?',
                detailLabel: 'Masuk',
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, LoginScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
