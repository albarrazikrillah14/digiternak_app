import 'package:digiternak_app/widget/primary_button.dart';
import 'package:flutter/material.dart';

class DialogAlert extends StatelessWidget {
  final String title;
  final String message;
  final Function() onSuccess;
  const DialogAlert({
    super.key,
    required this.title,
    required this.message,
    required this.onSuccess,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      content: Text(message),
      actions: <Widget>[
        PrimaryButton(
          onPressed: onSuccess,
          title: "Ya",
        ),
        const SizedBox(
          height: 16,
        ),
        PrimaryButton(
          onPressed: () {
            Navigator.pop(context);
          },
          title: "Batal",
          type: ButtonType.Delete,
        ),
      ],
    );
  }
}

void showAlertDialog({
  required BuildContext context,
  required String title,
  required String messsage,
  required Function() onSuccess,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return DialogAlert(
        title: title,
        message: messsage,
        onSuccess: onSuccess,
      );
    },
  );
}
