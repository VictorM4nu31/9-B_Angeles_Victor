import 'package:flutter/material.dart';

class PostTitle extends StatelessWidget {
  final String username;

  const PostTitle({required this.username, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: Text(username[0]),
        ),
        const SizedBox(width: 10.0),
        Text(
          username,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}

