import 'package:flutter/material.dart';
import 'package:mead_learn_app/src/core/utilities/app_spacing.dart';

import '../../core/utilities/app_colors.dart';
import '../../core/utilities/app_textstyle.dart';

class DynamicScreen extends StatelessWidget {
  final String title;
  final String image;
  const DynamicScreen({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            (title),
            style: heading2(context),
          ),
          leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(
              Icons.arrow_back,
              color: kTextColor,
              size: heading2(context).fontSize,
            ),
          ),
        ),
        body: Center (
          child: Padding (
            padding:
            EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                        children : [
                          Image.asset(image),
                          kSmallHorizontalSpacing,
                          Text(title, textAlign: TextAlign.center,
                            style: heading2(context),),
                        ]
                    ),
                    kSmallVerticalSpacing,
                    Text(
                      "About this class:",
                      style: bodySmallText(context),
                    ),
                    kLargeVerticalSpacing,
                    Divider(
                      color: Colors.black,
                    ),
                    kSmallVerticalSpacing,
                    Text(
                      "Teachers:",
                      style: bodySmallText(context),
                    ),
                    kExtraExtraLargeVerticalSpacing,
                    Divider(
                      color: Colors.black,
                    ),
                    kSmallVerticalSpacing,
                    Text(
                      "Topics:",
                      style: bodySmallText(context),
                    ),
                    kExtraExtraLargeVerticalSpacing,
                    Divider(
                      color: Colors.black,
                    ),
                    kSmallVerticalSpacing,
                    Text(
                      "Helpful Links:",
                      style: bodySmallText(context)
                    ),
                    kExtraExtraLargeVerticalSpacing,
                    Divider(
                      color: Colors.black,
                    ),
                    kSmallVerticalSpacing,
                    Text(
                      "Helpful Suggestions By Fellow Students"
                    ),
                    kTinyVerticalSpacing,
                  ]
              ),
            )
          )
        )
        );
  }
}