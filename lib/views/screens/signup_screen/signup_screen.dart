import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socify_app/configs/app_theme.dart';
import 'package:socify_app/main.dart';
import 'package:socify_app/views/screens/signup_screen/controller/signup_controller.dart';
import 'package:socify_app/views/screens/signup_screen/widgets/custom_button.dart';
import 'package:socify_app/views/screens/signup_screen/widgets/text_field_signup.dart';
import 'package:socify_app/views/screens/signup_screen/widgets/text_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signupCtrl = Get.put(SignUpController());
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          onPressed: () {
            if (signupCtrl.stepsCompleted.value == 1) {
              Get.back();
            } else {
              signupCtrl.stepsCompleted.value--;
            }
          },
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/sign-up.png',
              ),
              customTitleWidget(
                text: "Sign Up",
                isTitle: true,
              ),
              customTitleWidget(
                text:
                    'Please enter your information below in order to\ncreate your account.',
                isTitle: false,
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                "Step ${signupCtrl.stepsCompleted.value} / 3",
                style: AppTextTheme.labelTheme,
              ),
              const SizedBox(
                height: 16.0,
              ),
              CustomTextField(
                signUpController: signupCtrl,
              ),
              customButton(
                context,
                text: (signupCtrl.stepsCompleted.value < 3)
                    ? "Next"
                    : "Get Started",
                icon: (signupCtrl.stepsCompleted.value < 3)
                    ? Icons.chevron_right
                    : Icons.people_alt,
                onClick: () {
                  if (signupCtrl.stepsCompleted.value == 3) {
                    routesCtrl.gotoScreen(
                      toScreen: '/welcome',
                      isBackable: false,
                      isTimeout: false,
                    );
                  } else {
                    signupCtrl.stepsCompleted.value++;
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
