import 'package:ai_food/utils/apptext.dart';
import 'package:ai_food/utils/sizedbox.dart';
import 'package:ai_food/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final text;
  const CustomContainer({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 40,
      // margin: EdgeInsets.only(left: 5),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: AppText(
        text: text,
        color: AppColors.appColor2,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.appColor2, width: 1)),
    );
  }
}
