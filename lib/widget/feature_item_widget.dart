import 'package:flutter/material.dart';

class FeatureItemWidget extends StatelessWidget {
  final FeatureItem data;
  const FeatureItemWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            data.image,
            width: 60,
            height: 60,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            data.featureName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          )
        ],
      ),
    );
  }
}

class FeatureItem {
  final String image;
  final String featureName;

  FeatureItem({required this.image, required this.featureName});
}
