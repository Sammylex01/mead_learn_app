import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mead_learn_app/main_menu.dart';
import 'package:mead_learn_app/src/core/utilities/app_colors.dart';
import 'package:mead_learn_app/src/core/utilities/app_spacing.dart';
import 'package:mead_learn_app/src/core/utilities/app_textfield.dart';
import 'package:mead_learn_app/src/core/utilities/app_textstyle.dart';
import 'package:mead_learn_app/src/core/utilities/base_change_notifier.dart';
import 'package:mead_learn_app/src/core/utilities/images.dart';
import 'package:mead_learn_app/src/core/utilities/validation_mixin.dart';
import 'package:mead_learn_app/src/features/auth/controller/login_controller.dart';
import 'package:mead_learn_app/src/features/auth/views/forgot_password_screen.dart';
import 'package:mead_learn_app/src/features/auth/views/login_screen.dart';
import 'package:mead_learn_app/src/features/auth/views/signup_screen.dart';
import 'package:mead_learn_app/src/features/widgets/app_background.dart';
import 'package:mead_learn_app/src/features/widgets/app_button.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key? key}): super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(loginBgImage), fit: BoxFit.fill)
              ),
            child: Center(
              child: SizedBox(
                width: 241.0,
                height: 400.0,
                child: Card(
                  color: Colors.white,
                  child: Center(
                    child: AppBackground(
                      child: Expanded(
                        child: GetBuilder<LoginController>(
                            init: LoginController(),
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
                                              "Welcome",
                                              style: bodyNormalText(context)
                                                  .copyWith(fontFamily: "Roboto"),
                                            ),
                                          ),
                                          kTinyVerticalSpacing,
                                          AppTextField(
                                            keyboardType: TextInputType.emailAddress,
                                            textInputAction: TextInputAction.next,
                                            validator: (value) =>
                                                context.validateEmailAndPhone(value),
                                            controller: emailController,
                                            hintText: "Username",
                                          ),
                                          kTinyVerticalSpacing,
                                          AppTextField(
                                            keyboardType: TextInputType.emailAddress,
                                            textInputAction: TextInputAction.done,
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
                                          kSmallVerticalSpacing,
                                          Align(
                                            alignment: Alignment.center,
                                            child: TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ForgotPassword()));
                                              },

                                              child: Text("Forgot Password?",
                                                style: bodyTinyText(context)
                                                    .copyWith(fontFamily: "Roboto",),)
                                            ),
                                          ),
                                          kSmallVerticalSpacing,
                                          Container(
                                              height: 50,
                                              width: 200,
                                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                              child: ElevatedButton(
                                                child:const Text('Login',
                                                    style: TextStyle(fontSize: 16)),
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor: Colors.deepPurple,
                                                    foregroundColor: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10.0),
                                                    )
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              AppMainMenu()));
                                                },
                                              )
                                          ),
                                          // Row(
                                          //   children: [
                                          //     Expanded(
                                          //       child: AppButton(
                                          //         color: Colors.deepPurple,
                                          //         label: "Login",
                                          //         isLoading: controller.state.isLoading,
                                          //         onPressed: () async {
                                          //           Get.focusScope!.unfocus();
                                          //           if (_formKey.currentState!.validate()) {
                                          //             await controller.login(
                                          //                 emailController.text.trim(),
                                          //                 passwordController.text);
                                          //             emailController.clear();
                                          //             passwordController.clear();
                                          //           }
                                          //         },
                                          //       ),
                                          //     ),
                                          //   ],
                                          // ),
                                          kSmallVerticalSpacing,
                                          Column(
                                            children: <Widget>[
                                              Divider(
                                                color: Colors.grey,
                                              ),
                                              Container(
                                                // padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                                // margin: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                                                child: Align(
                                                  alignment: Alignment.bottomCenter,
                                                  child: ElevatedButton(
                                                    child:const Text('Google',
                                                        style: TextStyle(fontSize: 10)),
                                                    style: ElevatedButton.styleFrom(
                                                      backgroundColor: Colors.red,
                                                      foregroundColor: Colors.white,
                                                    ),
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  AppMainMenu()));
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                // margin: const EdgeInsets.fromLTRB(0, 0, 90, 0),
                                                child: Align(alignment: Alignment.bottomCenter,
                                                  child: ElevatedButton(
                                                    child:const Text('Teams',
                                                        style: TextStyle(fontSize: 10)),
                                                    style: ElevatedButton.styleFrom(
                                                      backgroundColor: Colors.blueAccent,
                                                      foregroundColor: Colors.white,
                                                    ),
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  AppMainMenu()));
                                                    },
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                child: const Text(
                                                  'Create Account',
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              SignUp()));
                                                },
                                              ),
                                            ],
                                          )
                                        ],
                                       ),
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
            ),
          ),
    );
  }
}
