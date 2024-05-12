import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/common/styles/styles.dart';
import 'package:digiternak_app/data/model/auth/login/request/login_request.dart';
import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/ui/auth/register/register_screen.dart';
import 'package:digiternak_app/ui/home/home_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/loading_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login_screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  late AuthProvider provider;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    provider = context.read<AuthProvider>();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Masuk Sekarang",
      body: ChangeNotifierProvider.value(
        value: provider,
        child: Consumer<AuthProvider>(
          builder: (context, provider, child) {
            switch (provider.state) {
              case ResultState.loading:
                return loadingScreen();
              case ResultState.error:
                return errorWidget(
                  context: context,
                  message: provider.message,
                  onPress: () {
                    provider.setState();
                  },
                );
              default:
                return SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 64),
                        Image.asset(
                          "assets/digi_ternak_logo.png",
                          height: 185,
                          width: 105,
                        ),
                        const SizedBox(height: 32),
                        const Text(
                          "Masuk Sekarang",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        const SizedBox(height: 32),
                        TextFormField(
                          controller: usernameController,
                          decoration: const InputDecoration(
                            labelText: 'Nama Pengguna',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Masukkan Nama Pengguna';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Kata Sandi',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Masukkan Kata Sandi';
                            }
                            if (value.length < 6) {
                              return 'Kata Sandi harus memiliki minimal 6 karakter';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 32),
                        PrimaryButton(
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                final scaffoldMessenger =
                                    ScaffoldMessenger.of(context);
                                final request = LoginRequest(
                                  username: usernameController.text,
                                  password: passwordController.text,
                                );

                                final result = await provider.login(request);
                                if (!result.error) {
                                  provider.saveToken(result.data!.token);
                                  SharedPreferences prefs =
                                      await SharedPreferences.getInstance();
                                  prefs.setInt('userId', result.data!.id);
                                  Navigator.pushReplacementNamed(
                                      context, HomeScreen.routeName);
                                } else {
                                  scaffoldMessenger.showSnackBar(
                                    const SnackBar(
                                        content: Text("Login gagal")),
                                  );
                                }
                              }
                            },
                            title: "Masuk"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('Belum punya akun?'),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    RegisterScreen.routeName, (route) => false);
                              },
                              child: const Text(
                                'Daftar',
                                style: TextStyle(color: secondaryColor),
                              ),
                            )
                          ],
                        ),
                        const Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
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
                        ),
                      ],
                    ),
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
