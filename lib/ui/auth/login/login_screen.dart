import 'package:digiternak_app/common/styles/styles.dart';
import 'package:digiternak_app/data/model/auth/login/login_request.dart';
import 'package:digiternak_app/data/remote/auth/auth_repository.dart';
import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/ui/auth/register/register_screen.dart';
import 'package:digiternak_app/ui/home/home_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthProvider(AuthRepository()),
      child: Consumer<AuthProvider>(
        builder: (context, provider, _) {
          return BaseScreen(
            title: "LOGIN",
            state: ResultState.hasData,
            body: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 64),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/ic_login1.png",
                          height: 185,
                          width: 105,
                        ),
                        const SizedBox(width: 16),
                        Column(
                          children: [
                            const SizedBox(height: 32),
                            Image.asset(
                              "assets/ic_login2.png",
                              height: 185,
                              width: 105,
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      "Login Now",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const SizedBox(height: 32),
                    TextFormField(
                      controller: usernameController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Masukkan alamat email';
                        }
                        final emailRegExp =
                            RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                        if (!emailRegExp.hasMatch(value)) {
                          return 'Alamat email tidak valid';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Masukkan password';
                        }
                        if (value.length < 8) {
                          return 'Password harus memiliki minimal 8 karakter';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 32),
                    provider.state == ResultState.loading
                        ? const CircularProgressIndicator(
                            color: Colors.black,
                          )
                        : PrimaryButton(
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                final scaffoldMessenger =
                                    ScaffoldMessenger.of(context);
                                final request = LoginRequest(
                                  email: usernameController.text,
                                  password: passwordController.text,
                                );

                                final result = await provider.login(request);
                                if (!result.error) {
                                  provider.saveToken(result.loginResult.token);
                                  // ignore: use_build_context_synchronously
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
                        const Text('Do not have an account?'),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, RegisterScreen.routeName);
                          },
                          child: const Text(
                            'Register',
                            style: TextStyle(color: secondaryColor),
                          ),
                        )
                      ],
                    ),
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
            ),
          );
        },
      ),
    );
  }
}
