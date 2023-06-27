// import 'package:flutter/material.dart';
//
// class Signup extends StatelessWidget{
//   SignUp({Key? key}) : super(key: key);
//   final _formKey = GlobalKey<FormState>();
//   final firstNameController = TextEditingController();
//   final lastNameController = TextEditingController();
//   final emailController = TextEditingController();
//   final phoneController = TextEditingController();
//   final passwordController = TextEditingController();
//   final confirmPasswordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AppBackground(
//         child: Expanded(
//           child: GetBuilder<CustomerSignupController>(
//               init: CustomerSignupController(),
//               builder: (controller) {
//                 return Form(
//                   key: _formKey,
//                   child: SingleChildScrollView(
//                     physics: BouncingScrollPhysics(),
//                     child: Padding(
//                       padding:
//                       EdgeInsets.symmetric(horizontal: 24, vertical: 24),
//                       child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Text(
//                               "Welcome",
//                               style: heading1(context)
//                                   .copyWith(fontFamily: "Roboto"),
//                             ),
//                             kMediumVerticalSpacing,
//                             Text(
//                               "Sign up",
//                               style: heading2(context),
//                             ),
//                             Text(
//                               "Create your Skill4Cash Account",
//                               style: bodyNormalText(context),
//                             ),
//                             kMediumVerticalSpacing,
//                             AppTextField(
//                               keyboardType: TextInputType.text,
//                               textInputAction: TextInputAction.next,
//                               label: "First name",
//                               controller: firstNameController,
//                               validator: (value) =>
//                                   context.validateFieldNotEmpty(value),
//                               hintText: "First name",
//                             ),
//                             kSmallVerticalSpacing,
//                             AppTextField(
//                               keyboardType: TextInputType.text,
//                               textInputAction: TextInputAction.next,
//                               label: "Last name",
//                               controller: lastNameController,
//                               validator: (value) =>
//                                   context.validateFieldNotEmpty(value),
//                               hintText: "Last name",
//                             ),
//                             kSmallVerticalSpacing,
//                             AppTextField(
//                               keyboardType: TextInputType.emailAddress,
//                               textInputAction: TextInputAction.next,
//                               label: "Email",
//                               controller: emailController,
//                               validator: (value) =>
//                                   context.validateEmailAddress(value),
//                               hintText: "Email",
//                             ),
//                             kSmallVerticalSpacing,
//                             AppTextField(
//                               keyboardType: TextInputType.text,
//                               textInputAction: TextInputAction.next,
//                               validator: (value) =>
//                                   context.validatePhoneNumber(value),
//                               controller: phoneController,
//                               label: "Phone number",
//                               hintText: "Phone number",
//                             ),
//                             kSmallVerticalSpacing,
//                             AppTextField(
//                               keyboardType: TextInputType.emailAddress,
//                               textInputAction: TextInputAction.next,
//                               label: "Password",
//                               controller: passwordController,
//                               validator: (value) =>
//                                   context.validatePassword(value),
//                               hintText: "Password",
//                               obscureText: controller.visibility,
//                               suffixIcon: IconButton(
//                                 icon: controller.visibility
//                                     ? Icon(Icons.visibility)
//                                     : Icon(Icons.visibility_off),
//                                 onPressed: () =>
//                                     controller.onVisibilityChange(),
//                               ),
//                             ),
//                             kMediumVerticalSpacing,
//                             kSmallVerticalSpacing,
//                             AppTextField(
//                               keyboardType: TextInputType.emailAddress,
//                               textInputAction: TextInputAction.next,
//                               label: "Confirm password",
//                               controller: confirmPasswordController,
//                               validator: (value) =>
//                                   context.validateConfirmPassword(
//                                       value!, passwordController.text),
//                               hintText: "Confirm password",
//                               obscureText: controller.visibility,
//                               suffixIcon: IconButton(
//                                 icon: controller.visibility
//                                     ? Icon(Icons.visibility)
//                                     : Icon(Icons.visibility_off),
//                                 onPressed: () =>
//                                     controller.onVisibilityChange(),
//                               ),
//                             ),
//                             kLargeVerticalSpacing,
//                             Row(
//                               children: [
//                                 Expanded(
//                                   child: AppButton(
//                                     color: kPrimaryColor,
//                                     label: "SIGN UP",
//                                     isLoading: controller.state.isLoading,
//                                     onPressed: () async {
//                                       Get.focusScope!.unfocus();
//                                       if (_formKey.currentState!.validate()) {
//                                         await controller.signupCustomer(
//                                           firstName:
//                                           firstNameController.text.trim(),
//                                           lastName:
//                                           lastNameController.text.trim(),
//                                           email: emailController.text.trim(),
//                                           phoneNumber:
//                                           phoneController.text.trim(),
//                                           password: passwordController.text,
//                                           confirmPassword:
//                                           confirmPasswordController.text,
//                                         );
//                                       }
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             kSmallVerticalSpacing,
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text("Already have an account?  "),
//                                 InkWell(
//                                   onTap: () => Navigator.of(context).pushNamed(
//                                       CustomerRoutes.customerLoginRoute),
//                                   child: Text(
//                                     "Sign in",
//                                     style: bodyNormalText(context)
//                                         .copyWith(color: kPrimaryColor),
//                                   ),
//                                 )
//                               ],
//                             ),
//                             kSmallVerticalSpacing,
//                             Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Expanded(
//                                     child: Container(
//                                       padding: EdgeInsets.symmetric(
//                                           horizontal: 24, vertical: 18),
//                                       decoration: BoxDecoration(
//                                           color: kWhiteColor,
//                                           boxShadow: [
//                                             BoxShadow(
//                                               color: Color(0xFFEEEEEE),
//                                               spreadRadius: 10,
//                                               blurRadius: 10,
//                                             ),
//                                           ]),
//                                       child: Center(
//                                           child: Text("Sign in with google")),
//                                     ),
//                                   ),
//                                 ]),
//                             kSmallVerticalSpacing,
//                             Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text("Tap here to switch to",
//                                       style: bodySmallText(context)
//                                   ),
//
//                                   TextButton(
//                                     onPressed: () => Navigator.of(context)
//                                         .pushNamed(ServiceProviderRoutes
//                                         .spSignUpRoute),
//                                     child: Text(
//                                       "Service provider Sign Up",
//                                       style: bodySmallText(context)
//                                           .copyWith(color: kPrimaryColor),
//                                     ),
//                                   ),
//                                 ]),
//                           ]),
//                     ),
//                   ),
//                 );
//               }),
//         ),
//       ),
//     );
//   }
//
// }