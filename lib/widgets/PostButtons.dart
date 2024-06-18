import 'package:flutter/material.dart';

class PostButtons extends StatelessWidget {
  const PostButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.thumb_up),
          label: const Text('Me gusta!'),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.comment),
          label: const Text('Comenta'),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.share),
          label: const Text('Compartir'),
        ),
      ],
    );
  }
}

