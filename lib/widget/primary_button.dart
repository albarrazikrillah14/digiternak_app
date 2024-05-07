import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final ButtonType type;

  const PrimaryButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.type = ButtonType.Normal});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(backgroundColor:
          MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.grey; // Disabled color
        }
        return type == ButtonType.Normal ? Colors.blue : Colors.red;
      })),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: Center(
          child: Text(
            title.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}

enum ButtonType { Delete, Normal }
