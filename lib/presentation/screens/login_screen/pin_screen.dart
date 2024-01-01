import 'package:coffee_shop_app/presentation/shared/colors/app_colors.dart';
import 'package:coffee_shop_app/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({super.key});

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  String pinValue = "";

  @override
  Widget build(BuildContext context) {

    return Theme(
      data: Theme.of(context).copyWith(dividerTheme: const DividerThemeData(color: Colors.transparent)),
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                children: [
                  Image.asset("./assets/images/cuate.png"),
                  const SizedBox(height: 25,),
                  const Text("Enter 6 digit PIN for secure account access", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      width: 300,
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {
                            pinValue = value;
                          });
                          print("$pinValue = $value | ${pinValue.length}");
                        },
                        //obscureText: true,
                        //obscuringCharacter: " ",
                        showCursor: false,
                        autofocus: true,
                        //initialValue: pinValue,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          alignLabelWithHint: false,
                          contentPadding: const EdgeInsets.all(0),
                          border: InputBorder.none,
                          prefix: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: AppColors.disabledTextColor,
                                radius: 18,
                                child: CircleAvatar(
                                  backgroundColor: pinValue.length > 0 ? AppColors.darkColor : Colors.white,
                                  radius: 16,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor:AppColors.disabledTextColor,
                                radius: 18,
                                child: CircleAvatar(
                                  backgroundColor: pinValue.length > 1 ? AppColors.darkColor : Colors.white,
                                  radius: 16,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: AppColors.disabledTextColor,
                                radius: 18,
                                child: CircleAvatar(
                                  backgroundColor: pinValue.length > 2 ? AppColors.darkColor : Colors.white,
                                  radius: 16,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: AppColors.disabledTextColor,
                                radius: 18,
                                child: CircleAvatar(
                                  backgroundColor: pinValue.length > 3 ? AppColors.darkColor : Colors.white,
                                  radius: 16,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor:AppColors.disabledTextColor,
                                radius: 18,
                                child: CircleAvatar(
                                  backgroundColor: pinValue.length > 4 ? AppColors.darkColor : Colors.white,
                                  radius: 16,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: AppColors.disabledTextColor,
                                radius: 18,
                                child: CircleAvatar(
                                  backgroundColor: pinValue.length > 5 ? AppColors.darkColor : Colors.white,
                                  radius: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  RichText(text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Forgot PIN? ",
                        style: TextStyle(color: AppColors.darkColor, fontSize: 14, fontWeight: FontWeight.w600)
                      ),
                      TextSpan(
                        text: "Change PIN.",
                        style: TextStyle(color: AppColors.infoColor, fontSize: 14, fontWeight: FontWeight.w600)
                      )
                    ]
                  )),
                ],
              ),
            ),
          ),
        ),
        persistentFooterButtons: [
          CustomElevatedButton(label: "Confirm", onPressed: () {})
        ],
      ),
    );
  }
}