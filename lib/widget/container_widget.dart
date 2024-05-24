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
          title != ""
              ? Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.black, fontSize: 24),
                        ),
                        closeContainer ?? Container(),
                      ],
                    ),
                    const SizedBox(height: 8),
                  ],
                )
              : Container(),
          child,
        ],
      ),
    ),
  );
}
