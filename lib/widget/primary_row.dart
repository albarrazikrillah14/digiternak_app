import 'package:digiternak_app/common/styles/styles.dart';
import 'package:flutter/material.dart';

class PrimaryRow extends StatelessWidget {
  final String label;
  final String? detailLabel;
  final Icon? icon;
  final Function()? onTap;

  const PrimaryRow({
    super.key,
    required this.label,
    required this.detailLabel,
    this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              width: 4,
            ),
            InkWell(
              onTap: onTap,
              child: Row(
                children: [
                  detailLabel != null
                      ? Text(
                          detailLabel ?? "",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: secondaryColor),
                        )
                      : Container(),
                  detailLabel != null
                      ? const SizedBox(
                          width: 4,
                        )
                      : Container(),
                  icon != null ? icon! : Container(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
