import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final decoration;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;

  AppText({
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.decoration,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      decoration: decoration,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );

    return Text(
      text,
      style: textStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
    );
  }
}
