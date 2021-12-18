import 'package:flutter/material.dart';

class AddPostTab extends StatelessWidget {
  const AddPostTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Center(
        child: Text("Add Post"),
      ),
    );
  }
}
