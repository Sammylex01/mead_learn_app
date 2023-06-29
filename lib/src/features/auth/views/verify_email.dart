
import 'package:flutter/material.dart';
import 'package:mead_learn_app/main_menu.dart';
import 'package:mead_learn_app/src/core/utilities/app_colors.dart';
import 'package:mead_learn_app/src/core/utilities/app_spacing.dart';
import 'package:mead_learn_app/src/core/utilities/app_textstyle.dart';
import 'package:mead_learn_app/src/features/widgets/app_background.dart';
import 'package:mead_learn_app/src/features/widgets/app_button.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: Expanded(
          child: Form(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 10,
                    ),
                    Text(
                      "Verify your account",
                      style: heading2(context),
                    ),
                    kSmallVerticalSpacing,
                    Text(
                      "Kindly verify your email via the link we have sent to newnew@gmail.com",
                      style: bodyNormalText(context),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: AppButton(
                            color: kLoginButtonColor,
                            label: "OPEN EMAIL",
                            onPressed: () {
                              Navigator.push(
                                context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AppMainMenu()));
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}