import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:socify_app/configs/app_theme.dart';
import 'package:socify_app/main.dart';
import 'package:socify_app/views/widgets/custom_button.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Get.back();
          },
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'OTP Code',
              style: AppTextTheme.titleTextTheme,
            ),
          ),
          Text(
            'Please enter the 4-Digit OTP code\nreceived to your mobile number.',
            style: AppTextTheme.subTitleTextTheme,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 32.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: PinCodeTextField(
              appContext: context,
              length: 4,
              onChanged: (val) {},
              keyboardType: TextInputType.number,
              autoDisposeControllers: true,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.circle,
                selectedColor: AppColorTheme.kDarkBlueColor,
                inactiveColor: AppColorTheme.kLightGrayColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          customButton(
            context,
            text: 'Verify OTP',
            icon: Icons.check,
            onClick: () {
              Get.offAllNamed('/home');
              storageCtrl.storage.write('loggedIn', true);
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
          RichText(
            text: TextSpan(
              text: 'Resend OTP',
              style: TextStyle(
                color: AppColorTheme.kDarkBlueColor,
                decoration: TextDecoration.underline,
                decorationColor: AppColorTheme.kDarkBlueColor,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ),
        ],
      ),
    );
  }
}
