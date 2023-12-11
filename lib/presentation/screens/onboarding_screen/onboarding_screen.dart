import 'package:coffee_shop_app/presentation/shared/colors/app_colors.dart';
import 'package:coffee_shop_app/presentation/shared/texts/app_texts.dart';
import 'package:coffee_shop_app/presentation/widgets/onboard_indicator_widget.dart';
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
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Image.asset("./assets/images/coffees_img.png")),
                const SizedBox(
                  height: 60,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Choose and customize your Drinks",
                      style: AppTexts.heading20Bold,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Customize your own drink exactly how you like it by adding any topping you like!!!",
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
                              position++;
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
