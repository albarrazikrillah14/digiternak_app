import 'package:digiternak_app/common/formatter/hashing.dart';
import 'package:digiternak_app/common/result.dart';
import 'package:digiternak_app/data/model/auth/login/request/login_request.dart';
import 'package:digiternak_app/provider/auth/auth_provider.dart';
import 'package:digiternak_app/ui/auth/register/register_screen.dart';
import 'package:digiternak_app/ui/home/home_screen.dart';
import 'package:digiternak_app/widget/base_screen.dart';
import 'package:digiternak_app/widget/error_widget.dart';
import 'package:digiternak_app/widget/loading_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:digiternak_app/widget/primary_row.dart';
import 'package:digiternak_app/widget/primary_textfield.dart';
import 'package:digiternak_app/widget/snackbar_widget.dart';
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
                            placeHolder: 'Nama Pengguna',
                            controller: usernameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Masukkan Nama Pengguna';
                              }
                              return null;
                            },
                          ),
                          PrimaryTextField(
                            placeHolder: 'Kata Sandi',
                            isPassword: true,
                            controller: passwordController,
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
                        ],
                      ),
                      Column(
                        children: [
                          PrimaryButton(
                              onPressed: () async {
                                if (formKey.currentState!.validate()) {
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
                                    snackBar(
                                        context: context,
                                        message: "Login gagal");
                                  }
                                }
                              },
                              title: "Masuk"),
                          PrimaryRow(
                            label: 'Belum punya akun?',
                            detailLabel: 'Daftar',
                            onTap: () {
                              Navigator.pushNamedAndRemoveUntil(context,
                                  RegisterScreen.routeName, (route) => false);
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
