import 'package:flutter/material.dart';
import 'package:socify_app/views/screens/home_screen/tabs/feeds_tab/widgets/story_tile.dart';

class FeedsTab extends StatelessWidget {
  const FeedsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.165,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: const ClampingScrollPhysics(),
              children: const [
                StoryTile(
                  name: 'Sabarinath',
                  imageUrl: 'assets/images/user.jpg',
                  profilePictureUrl: 'assets/images/user.jpg',
                ),
                StoryTile(
                  name: 'Sabarinath',
                  imageUrl: 'assets/images/user.jpg',
                  profilePictureUrl: 'assets/images/user.jpg',
                ),
                StoryTile(
                  name: 'Sabarinath',
                  imageUrl: 'assets/images/user.jpg',
                  profilePictureUrl: 'assets/images/user.jpg',
                ),
                StoryTile(
                  name: 'Sabarinath',
                  imageUrl: 'assets/images/user.jpg',
                  profilePictureUrl: 'assets/images/user.jpg',
                ),
                StoryTile(
                  name: 'Sabarinath',
                  imageUrl: 'assets/images/user.jpg',
                  profilePictureUrl: 'assets/images/user.jpg',
                ),
                StoryTile(
                  name: 'Sabarinath',
                  imageUrl: 'assets/images/user.jpg',
                  profilePictureUrl: 'assets/images/user.jpg',
                ),
                StoryTile(
                  name: 'Sabarinath',
                  imageUrl: 'assets/images/user.jpg',
                  profilePictureUrl: 'assets/images/user.jpg',
                ),
                StoryTile(
                  name: 'Sabarinath',
                  imageUrl: 'assets/images/user.jpg',
                  profilePictureUrl: 'assets/images/user.jpg',
                ),
                StoryTile(
                  name: 'Sabarinath',
                  imageUrl: 'assets/images/user.jpg',
                  profilePictureUrl: 'assets/images/user.jpg',
                ),
                StoryTile(
                  name: 'Sabarinath',
                  imageUrl: 'assets/images/user.jpg',
                  profilePictureUrl: 'assets/images/user.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
