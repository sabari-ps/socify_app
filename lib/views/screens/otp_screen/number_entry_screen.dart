import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:socify_app/configs/app_theme.dart';
import 'package:socify_app/views/widgets/custom_button.dart';

class NumberEntryScreen extends StatelessWidget {
  const NumberEntryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          onPressed: () {
            Get.back();
          },
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Enter Mobile Number',
              style: AppTextTheme.titleTextTheme,
            ),
          ),
          Text(
            'Please enter you mobile number\nin order to login to your account.',
            style: AppTextTheme.subTitleTextTheme,
          ),
          const SizedBox(
            height: 32.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            alignment: Alignment.center,
            child: IntlPhoneField(
              initialCountryCode: 'IN',
              textAlignVertical: TextAlignVertical.center,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
                hintText: "Enter Your Mobile Number",
                isDense: true,
              ),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          customButton(
            context,
            text: "Send OTP",
            icon: Icons.password,
            onClick: () {
              Get.toNamed('/otpVerify');
            },
          ),
        ],
      ),
    );
  }
}
