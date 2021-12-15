import 'package:flutter/material.dart';
import 'package:socify_app/configs/app_theme.dart';
import 'package:socify_app/main.dart';
import 'package:socify_app/views/screens/welcome_screen/widgets/custom_button.dart';
import 'package:socify_app/views/screens/welcome_screen/widgets/custom_text_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/welcome.png',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            customTitleWidget(
              isTitle: true,
              text: "Welcome to\nSocify!",
            ),
            customTitleWidget(
              isTitle: false,
              text:
                  "Let's create an account so that\nyou can join our community to explore.",
            ),
            customButton(
              context,
              text: "Login",
              icon: Icons.login,
              onClick: routesCtrl.gotoScreen(
                toScreen: '/login',
                isBackable: true,
                isTimeout: false,
              ),
            ),
            customButton(
              context,
              text: "Join Our Community",
              icon: Icons.group,
              onClick: routesCtrl.gotoScreen(
                toScreen: '/signup',
                isBackable: true,
                isTimeout: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
