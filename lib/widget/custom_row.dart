import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String title;
  final String value;
  final bool isLastData;
  final Widget? suffixWidget;

  const CustomRow({
    Key? key,
    required this.title,
    required this.value,
    this.isLastData = false,
    this.suffixWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              suffixWidget != null
                  ? Row(
                      children: [
                        Text(
                          value,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 16),
                          textAlign: TextAlign.right,
                        ),
                        suffixWidget!
                      ],
                    )
                  : Flexible(
                      child: Text(
                        value,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 16),
                        textAlign: TextAlign.right,
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
