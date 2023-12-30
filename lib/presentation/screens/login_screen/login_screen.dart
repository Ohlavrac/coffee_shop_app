import 'package:coffee_shop_app/presentation/shared/colors/app_colors.dart';
import 'package:coffee_shop_app/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/text_input_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerTheme: const DividerThemeData(color: Colors.transparent)),
      child: Scaffold(
        body: Center(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                  children: [
                    Image.asset("./assets/images/logo_login.png"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: TextInputWidget(
                        onChanged: (value) {},
                        hinttext: "Input your No. Handphone",
                        label: "No. Handphone",
                      ),
                    ),
                    CustomElevatedButton(
                      onPressed: () {},
                      label: "Login",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        persistentFooterButtons: [
          Align(
            alignment: Alignment.bottomCenter,
            child: RichText(
              text: const TextSpan(
                text: "Don't have an account ? ",
                children: [
                  TextSpan(text: "Register", style: TextStyle(color: AppColors.brandColor, fontWeight: FontWeight.w800)),
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}