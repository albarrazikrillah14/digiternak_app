import 'package:flutter/material.dart';

class NewsCardWidget extends StatelessWidget {
  final NewsCard data;

  const NewsCardWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            data.image,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            data.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            data.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class NewsCard {
  final String image;
  final String title;
  final String description;

  NewsCard({
    required this.image,
    required this.title,
    required this.description,
  });
}
