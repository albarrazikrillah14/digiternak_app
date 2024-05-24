import 'package:digiternak_app/ui/auth/login/login_screen.dart';
import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';

enum ErrorType { unauthorization, normal, empty }

class ErrorWidget extends StatelessWidget {
  final String message;
  final Function() onPress;
  final ErrorType type;
  const ErrorWidget({
    super.key,
    required this.message,
    required this.onPress,
    this.type = ErrorType.normal,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                  'assets/ic_${type == ErrorType.empty ? "empty" : "error"}.png'),
            ),
            const SizedBox(height: 16),
            Text(
              type == ErrorType.unauthorization
                  ? "Akun anda telah digunakan di perangkat lain"
                  : type == ErrorType.empty
                      ? "Data tidak ditemukan"
                      : message,
              style:
                  Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 24),
            ),
            const SizedBox(
              height: 16,
            ),
            type == ErrorType.empty
                ? Container()
                : PrimaryButton(onPressed: onPress, title: "Coba Lagi"),
          ],
        ),
      ),
    );
  }
}

Widget errorWidget(
    {required BuildContext context,
    String message = "",
    Function()? onPress,
    ErrorType type = ErrorType.normal}) {
  return ErrorWidget(
    message: message,
    onPress: type == ErrorType.unauthorization
        ? () {
            Navigator.pushNamedAndRemoveUntil(
                context, LoginScreen.routeName, (route) => false);
          }
        : onPress!,
    type: type,
  );
}
