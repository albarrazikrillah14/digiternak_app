import 'package:flutter/material.dart';

class FeatureItemWidget extends StatelessWidget {
  final FeatureItem data;
  const FeatureItemWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            child: Center(
              child: Image.asset(
                data.image,
                width: 48,
                height: 48,
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            data.featureName,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black),
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
