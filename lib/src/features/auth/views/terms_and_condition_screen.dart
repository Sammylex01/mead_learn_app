

import 'package:flutter/material.dart';
import 'package:mead_learn_app/src/core/utilities/app_colors.dart';
import 'package:mead_learn_app/src/core/utilities/app_spacing.dart';
import 'package:mead_learn_app/src/core/utilities/app_textstyle.dart';

class TermsAndConditionScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            color: kTextColor,
            size: heading2(context).height,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Terms and Conditions",
                style: heading2(context),
              ),
              kSmallVerticalSpacing,
              Text(
                  "Please  read these terms and conditions of use carefully before accessing, "
                      "using or obtaining any materials, information, productsor services. By accessing the "
                      "Mead-Learning website, mobile, desktop application, or other feature of the Mead-Learning "
                      "platform,you agree to be bound by these terms and conditions. If yo do not accept all these "
                      "Terms, then you may not use our platform.",
                style: TextStyle(color: Colors.black),
              ),
              kSmallVerticalSpacing,
              Text(
                "THESE TERMS INCLUDE AN ARBITRATION CLAUSE AND A WAIVER OF YOUR RIGHT TO PARTICIPATE IN "
                    "A CLASS ACTION OR REPRESENTATIVE LAWSUIT.",
                style: TextStyle(color: Colors.black)
              ),
              kSmallVerticalSpacing,
              Text(
                  "We may modify these terms, for any reason at any time, by posting a new version on Our Platform; "
                      "these changes do notaffects rights and obligations that arouse prior to such change. Your continued "
                      "use of our app following by posting of modified Terms will be subject to the Terms in effect at "
                      "the time of your use. Please review these Terms periodically for changes. If you object to the Terms "
                      "or any modifications to these Terms or become dissatisfied woth our Platform in any way, your only resource "
                      "is to immediatly terminate use of our Platform",
                  style: TextStyle(color: Colors.black)
              )
            ],
          ),
        ),
      ),
    );
  }

}