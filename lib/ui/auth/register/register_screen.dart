import 'package:digiternak_app/common/formatter/hashing.dart';
import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/auth/register/request/register_request.dart';
import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/loading_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:digiternak_app/widget/primary_row.dart';
import 'package:digiternak_app/widget/primary_textfield.dart';
import 'package:digiternak_app/widget/snackbar_widget.dart';
import 'package:flutter/material.dart';
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

  late AuthProvider provider;

  @override
  void initState() {
    super.initState();
    provider = context.read<AuthProvider>();
  }

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
    return BaseScreen(
      title: "Daftar Sekarang",
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
                return Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "assets/digi_ternak_logo.png",
                            height: 200,
                            width: 200,
                          ),
                          PrimaryTextField(
                            placeHolder: 'Nama pengguna',
                            controller: usernameController,
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
                          PrimaryTextField(
                            placeHolder: 'Email',
                            controller: emailController,
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
                          PrimaryTextField(
                            placeHolder: 'Kata sandi',
                            controller: passwordController,
                            isPassword: true,
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
                          PrimaryTextField(
                            placeHolder: 'Konfirmasi kata sandi',
                            controller: confirmPasswordController,
                            isPassword: true,
                            validator: (value) {
                              if (value != passwordController.text ||
                                  value!.isEmpty) {
                                return 'Konfirmasi password harus sama';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          PrimaryButton(
                              onPressed: () async {
                                if (formKey.currentState!.validate()) {
                                  final request = RegisterRequest(
                                    username: usernameController.text,
                                    email: emailController.text,
                                    password:
                                        hashString(passwordController.text),
                                  );

                                  final result =
                                      await provider.register(request);

                                  if (!(result.error ?? true)) {
                                    snackBar(
                                        context: context,
                                        message: result.message ?? "");
                                    Navigator.pushNamedAndRemoveUntil(
                                        context,
                                        LoginScreen.routeName,
                                        (route) => false);
                                  } else {
                                    snackBar(
                                        context: context,
                                        message:
                                            'proses registerasi gagal, coba lagi.');
                                  }
                                }
                              },
                              title: "DAFTAR"),
                          PrimaryRow(
                            label: 'Sudah punya akun?',
                            detailLabel: 'Masuk',
                            onTap: () {
                              Navigator.pushNamedAndRemoveUntil(context,
                                  LoginScreen.routeName, (route) => false);
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
