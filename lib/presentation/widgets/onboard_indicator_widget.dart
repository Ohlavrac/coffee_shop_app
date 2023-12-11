import 'package:flutter/material.dart';

import '../shared/colors/app_colors.dart';

class OnboardIndicatorWidget extends StatelessWidget {
  final int postion;
  const OnboardIndicatorWidget({super.key, required this.postion});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 15,
          width: postion == 0 ? 30 : 15,
          decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: postion == 0 ? AppColors.brandColor : AppColors.disabledTextColor),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            height: 15,
            width: postion == 1 ? 30 : 15,
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: postion == 1 ? AppColors.brandColor : AppColors.disabledTextColor),
          ),
        ),
        Container(
          height: 15,
          width: postion == 2 ? 30 : 15,
          decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: postion == 2 ? AppColors.brandColor : AppColors.disabledTextColor),
        ),
      ],
    );
  }
}
