import 'package:coffee_shop_app/core/descriptions_onboard.dart';
import 'package:coffee_shop_app/core/images_onboard.dart';
import 'package:coffee_shop_app/core/titles_onboard.dart';
import 'package:coffee_shop_app/presentation/shared/colors/app_colors.dart';
import 'package:coffee_shop_app/presentation/shared/texts/app_texts.dart';
import 'package:coffee_shop_app/presentation/widgets/onboard_indicator_widget.dart';
import 'package:coffee_shop_app/utils/onboard_incrementer.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int position = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "Skip",
                style: TextStyle(
                    color: AppColors.headingTextColor,
                    fontWeight: FontWeight.w500),
              ))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Image.asset(imagesOnboard[position])),
                const SizedBox(
                  height: 60,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titlesOnboard[position],
                      style: AppTexts.heading20Bold,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                        descriptionsOnboard[position],
                        style: AppTexts.title16Medium),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OnboardIndicatorWidget(
                        postion: position,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              position = onboardIncrementer(position);
                            });
                          },
                          child: Text("NEXT ->"))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
