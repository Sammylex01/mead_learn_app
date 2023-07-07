

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mead_learn_app/src/core/routes/route_manager.dart';
import 'package:mead_learn_app/src/core/utilities/app_colors.dart';
import 'package:mead_learn_app/src/core/utilities/app_spacing.dart';
import 'package:mead_learn_app/src/core/utilities/app_textfield.dart';
import 'package:mead_learn_app/src/core/utilities/app_textstyle.dart';
import 'package:mead_learn_app/src/core/utilities/base_change_notifier.dart';
import 'package:mead_learn_app/src/core/utilities/validation_mixin.dart';
import 'package:mead_learn_app/src/features/auth/controller/forgot_password_controller.dart';
import 'package:mead_learn_app/src/features/auth/controller/signup_controller.dart';
import 'package:mead_learn_app/src/features/widgets/app_background.dart';
import 'package:mead_learn_app/src/features/widgets/app_button.dart';

class ForgotPassword extends StatelessWidget{
  ForgotPassword({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

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
      body: Center (
        child: SizedBox(
          width: 241.0,
          height: 372.0,
          child: Card(
            color: kGrey,
            child: Center(
              child: AppBackground(
                child: Expanded(
                  child: GetBuilder<ForgotPasswordController>(
                      init: ForgotPasswordController(),
                      builder: (controller) {
                        return Form(
                          key: _formKey,
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Padding(
                              padding:
                              EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Forgot Password",
                                        style: heading1(context)
                                            .copyWith(fontFamily: "Roboto", fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    kSmallVerticalSpacing,
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Enter you email and we’ll send you a link to reset your password",
                                        style: bodyTinyText(context)
                                            .copyWith(fontFamily: "Roboto"),
                                      ),
                                    ),
                                    kSmallVerticalSpacing,
                                    Align(
                                      alignment: Alignment.center,
                                      child: AppTextField(
                                        keyboardType: TextInputType.emailAddress,
                                        textInputAction: TextInputAction.next,
                                        controller: emailController,
                                        validator: (value) =>
                                            context.validateEmailAddress(value),
                                        hintText: "study@email.com",
                                      ),
                                    ),
                                    kLargeVerticalSpacing,
                                    Row(
                                      children: [
                                        Expanded(
                                          child: AppButton(
                                            color: kLightBlueColor,
                                            label: "Reset Password",
                                            isLoading: controller.state.isLoading,
                                            onPressed: () async {
                                              Get.focusScope!.unfocus();
                                              if (_formKey.currentState!.validate()) {
                                                await controller.forgotPassword(
                                                  email: emailController.text.trim(),
                                                );
                                              }
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    kSmallVerticalSpacing,
                                  ]),
                            ),
                          ),
                        );
                      }),
                ),
              ),
              ), //Text
            ), //Center
          ), //Card
        ), //SizedBox
    );
  }
  // child: Column(
//   children: <Widget> [
//     const SizedBox(
//       width: 241.0,
//       height: 372.0,
//       child: const DecoratedBox(
//         decoration: const BoxDecoration(
//             color: kGrey
//         ),
//       ),
//     )
//   ]
// ),
}