import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String username;
  final String content;
  final String imageUrl;

  const PostWidget({required this.username, required this.content, required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            username,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 5.0),
          Text(content),
          SizedBox(height: 10.0),
          Image.asset(imageUrl),
          SizedBox(height: 10.0),
          Row(
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
          ),
        ],
      ),
    );
  }
}
