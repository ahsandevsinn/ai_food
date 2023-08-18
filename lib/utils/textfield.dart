import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  final TextEditingController controller;
  final dynamic cursorColor;
  final String? labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool? obscureText;
  final bool? autocorrect;
  final bool? autofocus;
  final bool? enabled;
  final bool? readOnly;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final TextAlign? textAlign;
  final InputDecoration? decoration;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final VoidCallback? onEditingComplete;
  final FocusNode? focusNode;
  final Function(String)? onSubmitted;
  final TextCapitalization? textCapitalization;
  final bool? showCursor;
  final TextAlignVertical? textAlignVertical;
  final bool? enableSuggestions;
  final bool? autocorrectText;

  const customTextField({
    Key? key,
    required this.controller,
    this.labelText,
    this.cursorColor,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
    this.autocorrect,
    this.autofocus,
    this.enabled,
    this.readOnly,
    this.maxLines,
    this.minLines,
    this.maxLength,
    this.keyboardType,
    this.textInputAction,
    this.style,
    this.hintStyle,
    this.textAlign,
    this.decoration,
    this.validator,
    this.onSaved,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.focusNode,
    this.onSubmitted,
    this.textCapitalization,
    this.showCursor,
    this.textAlignVertical,
    this.enableSuggestions,
    this.autocorrectText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: cursorColor,
      controller: controller,
      obscureText: obscureText ?? false,
      autocorrect: autocorrect ?? true,
      autofocus: autofocus ?? false,
      enabled: enabled ?? true,
      readOnly: readOnly ?? false,
      maxLines: maxLines ?? 1,
      minLines: minLines,
      maxLength: maxLength,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      style: style,
      decoration: decoration ??
          InputDecoration(
            labelText: labelText,
            hintText: hintText,
            prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
            border: OutlineInputBorder(),
          ),
      validator: validator,
      onSaved: onSaved,
      onChanged: onChanged,
      onTap: onTap,
      onEditingComplete: onEditingComplete,
      focusNode: focusNode,
      onFieldSubmitted: onSubmitted,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      showCursor: showCursor,
      textAlignVertical: textAlignVertical,
    );
  }
}
