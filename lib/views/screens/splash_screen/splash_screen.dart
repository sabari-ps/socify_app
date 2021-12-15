import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/socify_trans_with_tag.png',
            width: MediaQuery.of(context).size.width * 0.6,
          ),
          Image.asset(
            'assets/images/loading.gif',
            width: MediaQuery.of(context).size.width * 0.10,
          ),
        ],
      ),
    );
  }
}
