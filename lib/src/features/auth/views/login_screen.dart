
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mead_learn_app/src/core/routes/route_manager.dart';
import 'package:mead_learn_app/src/core/utilities/app_textfield.dart';
import 'package:mead_learn_app/src/core/utilities/app_textstyle.dart';
import 'package:mead_learn_app/src/core/utilities/base_change_notifier.dart';
import 'package:mead_learn_app/src/core/utilities/validation_mixin.dart';
import 'package:mead_learn_app/src/features/auth/controller/login_controller.dart';
import 'package:mead_learn_app/src/features/widgets/app_background.dart';
import 'package:mead_learn_app/src/features/widgets/app_button.dart';

import '../../../core/utilities/constants.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: Expanded(
          child: GetBuilder<LoginController>(
              init: LoginController(),
              builder: (controller) {
                return Form(
                  key: _formKey,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 5.5,
                          ),
                          Text(
                            "Welcome",
                            style: heading1(context)
                                .copyWith(fontFamily: "Roboto"),
                          ),
                          kMediumVerticalSpacing,
                          Text(
                            "Sign in",
                            style: heading2(context),
                          ),
                          Text(
                            "Sign into your Skill4Cash Account",
                            style: bodyNormalText(context),
                          ),
                          kMediumVerticalSpacing,
                          AppTextField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            label: "Email / Phone",
                            validator: (value) =>
                                context.validateEmailAndPhone(value),
                            controller: emailController,
                            hintText: "Email / Phone",
                          ),
                          kSmallVerticalSpacing,
                          AppTextField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.done,
                            label: "Password",
                            obscureText: controller.visibility,
                            validator: (value) =>
                                context.validatePassword(value),
                            controller: passwordController,
                            hintText: "Password",
                            suffixIcon: IconButton(
                              icon: controller.visibility
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                              onPressed: () => controller.onVisibilityChange(),
                            ),
                          ),
                          kLargeVerticalSpacing,
                          Row(
                            children: [
                              Expanded(
                                child: AppButton(
                                  color: kPrimaryColor,
                                  label: "SIGN IN",
                                  isLoading: controller.state.isLoading,
                                  onPressed: () async {
                                    Get.focusScope?.unfocus();
                                    if (_formKey.currentState!.validate()) {
                                      await controller.login(
                                          emailController.text.trim(),
                                          passwordController.text);
                                      emailController.clear();
                                      passwordController.clear();
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't have an account?  "),
                                InkWell(
                                  onTap: () => Navigator.of(context).pushNamed(
                                      AppRoutes.loginRoute),
                                  child: Text(
                                    "Sign Up",
                                    style: bodyNormalText(context)
                                        .copyWith(color: kPrimaryColor),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () => Get.offAllNamed(
                                      AppRoutes.mainMenuRoute),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 18),
                                    decoration: BoxDecoration(
                                        color: kWhiteColor,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFFEEEEEE),
                                            spreadRadius: 10,
                                            blurRadius: 10,
                                          ),
                                        ]),
                                    child: Center(
                                        child: Text("Sign in with google",        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          kSmallVerticalSpacing,
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}