import 'package:flutter/material.dart';

class FeatureItemWidget extends StatelessWidget {
  final FeatureItem data;
  const FeatureItemWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  data.image,
                  width: 48,
                  height: 48,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                data.featureName,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FeatureItem {
  final String image;
  final String featureName;

  FeatureItem({required this.image, required this.featureName});
}
