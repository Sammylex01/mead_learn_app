import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mead_learn_app/src/core/routes/route_manager.dart';
import 'package:mead_learn_app/src/core/utilities/app_colors.dart';
import 'package:mead_learn_app/src/core/utilities/app_spacing.dart';
import 'package:mead_learn_app/src/core/utilities/app_textfield.dart';
import 'package:mead_learn_app/src/core/utilities/app_textstyle.dart';
import 'package:mead_learn_app/src/core/utilities/base_change_notifier.dart';
import 'package:mead_learn_app/src/core/utilities/validation_mixin.dart';
import 'package:mead_learn_app/src/features/auth/controller/signup_controller.dart';
import 'package:mead_learn_app/src/features/widgets/app_background.dart';
import 'package:mead_learn_app/src/features/widgets/app_button.dart';



class SignUp extends StatelessWidget{
  SignUp({Key? key}) : super(key: key);
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
      centerTitle: true,
      title: Text(
        "Sign Up",
        style: heading2(context),
      ),
      leading: IconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: Icon(
        Icons.arrow_back,
        color: kTextColor,
        size: heading2(context).height,
      ),
    ),
    ),
      body: AppBackground(
        child: Expanded(
          child: GetBuilder<SignUpController>(
              init: SignUpController(),
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
                            Text(
                              "Welcome",
                              style: heading1(context)
                                  .copyWith(fontFamily: "Roboto"),
                            ),
                            kMediumVerticalSpacing,
                            AppTextField(
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              label: "First name",
                              controller: firstNameController,
                              validator: (value) =>
                                  context.validateFieldNotEmpty(value),
                              hintText: "Your first name",
                            ),
                            kSmallVerticalSpacing,
                            AppTextField(
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              label: "Last name",
                              controller: lastNameController,
                              validator: (value) =>
                                  context.validateFieldNotEmpty(value),
                              hintText: "Your last name",
                            ),
                            kSmallVerticalSpacing,
                            AppTextField(
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              label: "Email",
                              controller: emailController,
                              validator: (value) =>
                                  context.validateEmailAddress(value),
                              hintText: "study@email.com",
                            ),
                            kSmallVerticalSpacing,
                            AppTextField(
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              label: "Password",
                              controller: passwordController,
                              validator: (value) =>
                                  context.validatePassword(value),
                              hintText: "Your password",
                              obscureText: controller.visibility,
                              suffixIcon: IconButton(
                                icon: controller.visibility
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                                onPressed: () =>
                                    controller.onVisibilityChange(),
                              ),
                            ),
                            kMediumVerticalSpacing,
                            kSmallVerticalSpacing,
                            AppTextField(
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              label: "Confirm password",
                              controller: confirmPasswordController,
                              validator: (value) =>
                                  context.validateConfirmPassword(
                                      value!, passwordController.text),
                              hintText: "Confirm password",
                              obscureText: controller.visibility,
                              suffixIcon: IconButton(
                                icon: controller.visibility
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                                onPressed: () =>
                                    controller.onVisibilityChange(),
                              ),
                            ),
                            kSmallVerticalSpacing,
                            AppTextField(
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              validator: (value) =>
                                  context.validatePhoneNumber(value),
                              controller: phoneController,
                              label: "Phone number",
                              hintText: "080xxxxxxx",
                            ),
                            kMediumVerticalSpacing,
                            // Text(
                            //   "I agree with the terms and conditions also the protection of my personal data of my personal data on this application",
                            //   style: bodySmallText(context).copyWith(color: Colors.grey),
                            // ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("I agree with the ",
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.justify,
                                    style: bodyTinyText(context)
                                ),
                                InkWell(
                                  onTap: () => Navigator.of(context).pushNamed(
                                      AppRoutes.authScreenRoute),
                                  child: Text(
                                    " terms and conditions ",
                                    style: bodyTinyText(context)
                                        .copyWith(color: kBlue2)),
                                ),

                              ]
                            ),
                            kLargeVerticalSpacing,
                            Row(
                              children: [
                                Expanded(
                                  child: AppButton(
                                    color: Color(0xFF52B6DF),
                                    label: "Sign Up",
                                    isLoading: controller.state.isLoading,
                                    onPressed: () async {
                                      Get.focusScope!.unfocus();
                                      if (_formKey.currentState!.validate()) {
                                        await controller.signupCustomer(
                                          firstName:
                                          firstNameController.text.trim(),
                                          lastName:
                                          lastNameController.text.trim(),
                                          email: emailController.text.trim(),
                                          phoneNumber:
                                          phoneController.text.trim(),
                                          password: passwordController.text,
                                          confirmPassword:
                                          confirmPasswordController.text,
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                            kSmallVerticalSpacing,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an account?  "),
                                InkWell(
                                  onTap: () => Navigator.of(context).pushNamed(
                                      AppRoutes.authScreenRoute),
                                  child: Text(
                                    "Sign in",
                                    style: bodyNormalText(context)
                                        .copyWith(color: kPrimaryColor),
                                  ),
                                )
                              ],
                            ),
                            kSmallVerticalSpacing,
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 18),
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
                                          child: Text("Sign in with google")),
                                    ),
                                  ),
                                ]),
                          ]),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}