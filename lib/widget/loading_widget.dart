import 'package:flutter/material.dart';

class _LoadingWidget extends Widget {
  const _LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.blue,
      ),
    );
  }

  @override
  Element createElement() {
    throw UnimplementedError();
  }
}
