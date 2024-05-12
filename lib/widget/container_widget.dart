import 'package:flutter/material.dart';

Widget buildContainer({
  required BuildContext context,
  required Widget child,
  required String title,
  Widget? closeContainer,
}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              closeContainer ?? Container(),
            ],
          ),
          const SizedBox(height: 8),
          child,
        ],
      ),
    ),
  );
}
