import 'package:ai_food/utils/apptext.dart';
import 'package:ai_food/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final title;
  final subtitle;
  CustomAppBar({this.title, this.subtitle});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/Vector.png"),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: widget.title,
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: AppColors.whiteColor,
              ),
              AppText(
                text: widget.subtitle,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.whiteColor,
              ),
            ],
          ),
        )
      ],
    );
  }
}
