import 'package:flutter/material.dart';

class PostButtons extends StatelessWidget {
  const PostButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: Text('Me gusta!'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('Comenta'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('Compartir'),
        ),
      ],
    );
  }
}
