import 'package:flutter/material.dart';

class PostTitle extends StatelessWidget {
  final String username;

  const PostTitle({required this.username, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      username,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
    );
  }
}
