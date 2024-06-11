import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  final String imageUrl;

  const PostImage({required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(imageUrl);
  }
}
