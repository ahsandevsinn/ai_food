import 'package:ai_food/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final labelText;
  final controller;
  final validator;
  final hintStyle;
  final hintText;
  final suffixIcon;
  final cursorColor;
  final Function(String)? onChanged;

  CustomTextFormField(
      {this.labelText,
      this.cursorColor,
      this.suffixIcon,
      this.controller,
      this.validator,
      this.onChanged,
      this.hintStyle,
      this.hintText});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: TextStyle(color: AppColors.appColor2),
      cursorColor: widget.cursorColor,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: widget.suffixIcon,
        hintStyle: widget.hintStyle,
        labelText: widget.labelText,
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.appColor2)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.appColor2)),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.appColor2)),
      ),
      validator: widget.validator,
      onChanged: widget.onChanged,
    );
  }
}

class CustomTextField extends StatefulWidget {
  final controller;
  final hintText;
  final suffixIcon;
  const CustomTextField(
      {super.key, this.controller, this.hintText, this.suffixIcon});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      cursorColor: AppColors.appColor2,
      controller: widget.controller,
      suffixIcon: widget.suffixIcon,
      hintText: widget.hintText,
      hintStyle: const TextStyle(
          color: AppColors.appColor2,
          fontSize: 14,
          fontWeight: FontWeight.w500),
    );
  }
}

class OtpField extends StatefulWidget {
  final controller;

  const OtpField({super.key, this.controller});

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        child: TextFormField(
            controller: widget.controller,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.appColor2,
                fontWeight: FontWeight.w500,
                fontSize: 20),
            cursorColor: AppColors.appColor2,
            decoration: InputDecoration(
              hintStyle: TextStyle(color: AppColors.appColor2),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.appColor2)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.appColor2)),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.appColor2)),
            )));
  }
}
