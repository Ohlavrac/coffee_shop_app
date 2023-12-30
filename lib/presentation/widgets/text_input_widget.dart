import 'package:coffee_shop_app/presentation/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  final Function(String)? onChanged;
  final String? hinttext;
  final String? label;
  const TextInputWidget({super.key, this.onChanged, this.hinttext, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label == null ? Container() : Text(label!),
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 10),
          child: TextFormField(
            onChanged: onChanged,
            style: TextStyle(),
            decoration: InputDecoration(
              hintText: hinttext,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                      width: 3, color: AppColors.disabledTextColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide:
                      const BorderSide(width: 3, color: AppColors.brandColor)),
            ),
          ),
        ),
      ],
    );
  }
}
