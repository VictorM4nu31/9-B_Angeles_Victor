import 'package:flutter/material.dart';
import 'package:golden_sun_posts/widgets/PostTitle.dart';
import 'package:golden_sun_posts/widgets/PostDescription.dart';
import 'package:golden_sun_posts/widgets/PostImage.dart';
import 'package:golden_sun_posts/widgets/PostButtons.dart';

class PostCard extends StatelessWidget {
  final String username;
  final String content;
  final String imageUrl;

  const PostCard({required this.username, required this.content, required this.imageUrl, super.key});

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
          PostTitle(username: username),
          SizedBox(height: 5.0),
          PostDescription(content: content),
          SizedBox(height: 10.0),
          PostImage(imageUrl: imageUrl),
          SizedBox(height: 10.0),
          PostButtons(),
        ],
      ),
    );
  }
}
