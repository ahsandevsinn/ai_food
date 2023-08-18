import 'package:ai_food/utils/apptext.dart';
import 'package:ai_food/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final text;
  const CustomButton({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 40,
      width: width * 0.5,
      decoration: BoxDecoration(
          color: AppColors.appColor2, borderRadius: BorderRadius.circular(50)),
      child: Center(
          child: AppText(
        text: text,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.whiteColor,
      )),
    );
  }
}
