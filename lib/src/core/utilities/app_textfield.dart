
import 'package:flutter/material.dart';
import 'package:mead_learn_app/src/core/utilities/app_spacing.dart';
import 'package:mead_learn_app/src/core/utilities/app_textstyle.dart';

import 'constants.dart';

class AppTextField extends StatelessWidget {
  final String? hintText;
  final bool? filled;
  final bool? obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final int? maxlength;
  final InputBorder? border;
  final String? title;
  final String? label;
  final int? maxLines;
  final Widget? suffixIcon;

  final Widget? prefixIcon;
  final void Function(String)? onChanged;
  final Color? borderColor;
  final Color? textColor;
  final double? height;
  final bool? enabled;
  final Widget? input;
  final Function(String?)? onSaved;
  final String? intial;

  const AppTextField({
    Key? key,
    this.label,
    this.hintText,
    this.controller,
    this.suffixIcon,
    this.onChanged,
    this.maxLines,
    this.obscureText,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.borderColor,
    this.textColor = Colors.black87,
    this.filled,
    this.input,
    this.maxlength,
    this.border,
    this.title,
    this.height,
    this.enabled,
    this.onSaved,
    this.intial,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label != null ? Text(label!.toUpperCase()) : SizedBox(),
        label != null ? SizedBox(height: 6) : SizedBox(),
        // Text(
        //   title!,
        //   // style: kLabelText,
        // ),
        kExtraSmallVerticalSpacing,
        TextFormField(
          initialValue: intial,
          // onSaved: onSaved,
          onFieldSubmitted: onSaved,
          controller: controller,
          style: TextStyle(color: textColor, fontSize: 18, height: height),
          onChanged: onChanged,
          maxLines: maxLines ?? 1,
          validator: validator,
          keyboardType: keyboardType,
          enabled: enabled,
          textInputAction: textInputAction ?? TextInputAction.next,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.transparent,
            hintText: hintText,
            hintStyle: labelText(context)
                .copyWith(color: Colors.black38, fontSize: 14),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            contentPadding: EdgeInsets.all(16.0),
            border: OutlineInputBorder(),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFF647C), width: 0.5),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFF647C), width: 0.5),
              borderRadius: BorderRadius.circular(5),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: borderColor ?? Color(0xFFE4ECF1), width: 0.5),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor ?? kPrimaryColor),
              borderRadius: BorderRadius.circular(5),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 0.5),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
    );
  }
}