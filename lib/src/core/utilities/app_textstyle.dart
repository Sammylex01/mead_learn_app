
import 'package:flutter/material.dart';
import 'package:mead_learn_app/src/core/utilities/app_colors.dart';
import 'package:mead_learn_app/src/core/utilities/constants.dart';

/// App TextStyles

TextStyle heading1(BuildContext context) => TextStyle(
  color: kTextColor,
  fontSize: context.dx(20), //18

  fontWeight: FontWeight.bold,
);

TextStyle heading2(BuildContext context) => TextStyle(
  color: kTextColor,
  fontSize: context.dx(18),
  //16
  fontWeight: FontWeight.w500,
);

TextStyle bodyNormalText(BuildContext context) => TextStyle(
  color: kTextColor,
  fontSize: context.dx(14),
  fontWeight: FontWeight.w500,
);

TextStyle bodySmallText(BuildContext context) => TextStyle(
  color: kTextColor,
  fontWeight: FontWeight.w400,
  fontSize: context.dx(12),
);

TextStyle bodyTinyText(BuildContext context) => TextStyle(
  color: kTextColor,
  fontSize: context.dx(10),
  fontWeight: FontWeight.w400,
);

TextStyle labelText(BuildContext context) => TextStyle(
  color: kTextColor,
  fontSize: context.dx(18),
  fontWeight: FontWeight.w400,
);

TextStyle planlistText(BuildContext context) => TextStyle(
  fontSize: context.dx(16),
  fontWeight: FontWeight.w600,
  color: kTextColor,
);

TextStyle serviceCategoryText(BuildContext context) => TextStyle(
  color: kHintColor,
  fontSize: context.dx(12),
  fontWeight: FontWeight.w500,
);
