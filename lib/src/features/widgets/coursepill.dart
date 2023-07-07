
import 'package:flutter/material.dart';
import 'package:mead_learn_app/src/core/utilities/app_colors.dart';
import 'package:mead_learn_app/src/core/utilities/app_spacing.dart';

class CoursePill extends StatelessWidget {
  final String title;
  final IconData icon;
  const CoursePill({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: kWhiteColor,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFEEEEEE),
                  spreadRadius: 6,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Icon(
              icon,
              color: kPrimaryColor,
            )),
        kTinyVerticalSpacing,
        Center(
          // child: TextButton(
          //   onPressed: () {  },
          //   child: Text(
          //     title,
          //   ),
          //
          // ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            )
        ),
      ],
    );
  }
}