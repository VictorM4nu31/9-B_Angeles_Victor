import 'package:flutter/material.dart';

class PostDescription extends StatelessWidget {
  final String content;

  const PostDescription({required this.content, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(content);
  }
}
