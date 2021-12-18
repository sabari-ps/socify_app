import 'package:flutter/material.dart';
import 'package:socify_app/configs/app_theme.dart';

class StoryTile extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String profilePictureUrl;
  const StoryTile({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.profilePictureUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.180,
            height: MediaQuery.of(context).size.height * 0.125,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 16,
            child: CircleAvatar(
              backgroundImage: AssetImage(
                profilePictureUrl,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
