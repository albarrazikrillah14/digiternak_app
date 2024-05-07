import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/auth/register/request/register_request.dart';
import 'package:digiternak_app/data/remote/auth/auth_repository.dart';
import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:digiternak_app/common/styles/styles.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = '/register_screen';
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthProvider>(
      create: (context) => AuthProvider(
        AuthRepository(),
      ),
      child: Consumer<AuthProvider>(
        builder: (context, provider, _) {
          return BaseScreen(
            title: "Daftar",
            isHasBackButton: true,
            state: ResultState.hasData,
            body: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 64,
                    ),
                    Image.asset(
                      "assets/digi_ternak_logo.png",
                      height: 130,
                      width: 155,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const Text(
                      "Daftar Sekarang",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const SizedBox(height: 32),
                    TextFormField(
                      controller: usernameController,
                      decoration: const InputDecoration(
                        labelText: 'Nama Pengguna',
                      ),
                      validator: (value) {
                        final length = value?.length ?? 0;
                        if (value == null ||
                            value.isEmpty ||
                            length < 6 ||
                            length > 255) {
                          return 'Masukkan nama pengguna dengan panjang 6-255 karakter';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: emailController,
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
                        labelText: 'Kata Sandi',
                      ),
                      validator: (value) {
                        final regex =
                            RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$");
                        if (value == null || value.isEmpty) {
                          return 'Masukkan password';
                        }
                        if (value.length < 8) {
                          return 'Password harus memiliki minimal 8 karakter';
                        }
                        if (!regex.hasMatch(value)) {
                          return 'Password harus mengandung setidaknya satu huruf kecil, satu huruf besar, dan satu angka';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: confirmPasswordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Konfirmasi Kata Sandi',
                      ),
                      validator: (value) {
                        if (value != passwordController.text ||
                            value!.isEmpty) {
                          return 'Konfirmasi password harus sama';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    provider.state == ResultState.loading
                        ? const CircularProgressIndicator(
                            color: Colors.blue,
                          )
                        : PrimaryButton(
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                final scaffolMessenger =
                                    ScaffoldMessenger.of(context);

                                final request = RegisterRequest(
                                    username: usernameController.text,
                                    email: emailController.text,
                                    password: passwordController.text,
                                    passwordReapet:
                                        confirmPasswordController.text,
                                    roleId: 1);

                                final result = await provider.register(request);

                                if (!result.error) {
                                  scaffolMessenger.showSnackBar(
                                      SnackBar(content: Text(result.message)));
                                  Navigator.pushReplacementNamed(
                                      context, LoginScreen.routeName);
                                } else {
                                  scaffolMessenger.showSnackBar(const SnackBar(
                                      content: Text(
                                          'proses registerasi gagal, coba lagi.')));
                                }
                              }
                            },
                            title: "DAFTAR"),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Sudah punya akun?'),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, LoginScreen.routeName);
                          },
                          child: const Text(
                            'Masuk',
                            style: TextStyle(color: secondaryColor),
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Align(
                        alignment: Alignment.bottomCenter,
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
