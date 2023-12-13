import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/custom_elevated_button.dart';
import 'package:neil_aron_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 44.v),
                child: Column(children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgThumbsUp,
                        height: 54.v,
                        width: 45.h),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 20.h, top: 7.v, bottom: 7.v),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "ez",
                                  style: CustomTextStyles
                                      .headlineLargeMontserratPrimary),
                              TextSpan(
                                  text: "-check",
                                  style: CustomTextStyles
                                      .headlineLargeMontserratBluegray50001)
                            ]),
                            textAlign: TextAlign.left))
                  ]),
                  SizedBox(height: 27.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 28.h, vertical: 24.v),
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder32),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Text("Login",
                            style: CustomTextStyles
                                .titleLargeMontserratPrimaryBold),
                        SizedBox(height: 41.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Email",
                                style: theme.textTheme.labelMedium)),
                        SizedBox(height: 4.v),
                        CustomTextFormField(controller: emailController),
                        SizedBox(height: 18.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Password",
                                style: theme.textTheme.labelMedium)),
                        SizedBox(height: 5.v),
                        CustomTextFormField(
                            controller: passwordController,
                            obscureText: true,
                            textInputAction: TextInputAction.done),
                        SizedBox(height: 19.v),
                        CustomElevatedButton(
                            text: "Log in",
                            buttonTextStyle: theme.textTheme.titleMedium!,
                            onPressed: () {
                              onTapLogIn(context);
                            }),
                        SizedBox(height: 9.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                                onTap: () {
                                  onTapTxtCreateanotheraccount(context);
                                },
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "Don't have an account?",
                                          style: CustomTextStyles
                                              .labelMediumOnPrimaryContainer),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "Create account",
                                          style:
                                              CustomTextStyles.labelMediumBold)
                                    ]),
                                    textAlign: TextAlign.left))),
                        SizedBox(height: 9.v)
                      ])),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the loginOneScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtCreateanotheraccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.privacyActScreen);
  }
}
