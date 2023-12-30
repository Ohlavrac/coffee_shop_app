import 'package:coffee_shop_app/presentation/shared/colors/app_colors.dart';
import 'package:coffee_shop_app/presentation/widgets/text_input_widget.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                children: [
                  Center(
                    child: Image.asset("./assets/images/logo_login.png"),
                  ),
                  const SizedBox(height: 40,),
                  TextInputWidget(
                    onChanged: (value) {},
                    hinttext: "Input your name",
                    label: "Name",
                  ),
                  TextInputWidget(
                    onChanged: (value) {},
                    hinttext: "Input your No. Handphone",
                    label: "No. Handphone",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                          text: "By tapping \"Register\" you agree to our\n",
                          style: TextStyle(color: AppColors.nonActiveTextColor),
                          children: [
                            TextSpan(
                                text: "Terms of Use",
                                style: TextStyle(color: AppColors.acentColor)),
                            TextSpan(text: " and "),
                            TextSpan(
                                text: "Privacy Policy",
                                style: TextStyle(color: AppColors.acentColor))
                          ])),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          null;
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.brandColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                        ),
                        child: const Text(
                          "Register",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
