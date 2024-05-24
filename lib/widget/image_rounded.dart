import 'package:flutter/material.dart';

enum ImageSourceType {
  asset,
  network,
}

class ImageRounded extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  final double cornerRadius;
  final ImageSourceType sourceType;

  const ImageRounded({
    super.key,
    this.height = 0,
    this.width = 0,
    required this.image,
    this.cornerRadius = 16,
    this.sourceType = ImageSourceType.asset,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(cornerRadius),
      child: sourceType == ImageSourceType.network
          ? Image.network(
              image,
              height: height,
              width: width,
              fit: BoxFit.cover,
            )
          : Image.asset(
              image,
              height: height,
              width: width,
              fit: BoxFit.cover,
            ),
    );
  }
}
