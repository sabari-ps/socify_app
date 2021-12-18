import 'package:flutter/material.dart';

homeAppBar() => AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: const Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/user.jpg',
          ),
        ),
      ),
      title: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Sabarinath\n',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
            TextSpan(
              text: '@sabari_nath',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ],
    );
