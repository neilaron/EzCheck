import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/models/user.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/custom_elevated_button.dart';
import 'package:neil_aron_s_application1/widgets/custom_outlined_button.dart';
import 'package:neil_aron_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PrivacyActScreen extends StatelessWidget {
  PrivacyActScreen({Key? key}) : super(key: key);

  TextEditingController fullNameFieldController = TextEditingController();

  TextEditingController usernameFieldController = TextEditingController();

  TextEditingController mobileNumberFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  TextEditingController confirmPasswordFieldController =
      TextEditingController();

  TextEditingController emailFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 37.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              height: 931.v,
                              width: 411.h,
                              margin: EdgeInsets.only(left: 7.h, right: 10.h),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                left: 9.h,
                                                top: 89.v,
                                                right: 6.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25.h,
                                                vertical: 24.v),
                                            decoration: AppDecoration
                                                .fillOnPrimary
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder32),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text("Sign up",
                                                      style: CustomTextStyles
                                                          .titleLargeMontserratPrimaryBold),
                                                  SizedBox(height: 43.v),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      "Full Name (required)",
                                                      style: theme.textTheme
                                                          .labelMedium,
                                                    ),
                                                  ),
                                                  SizedBox(height: 4.v),
                                                  _buildFullNameField(context),
                                                  SizedBox(height: 17.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                          "Username (required)",
                                                          style: theme.textTheme
                                                              .labelMedium)),
                                                  SizedBox(height: 4.v),
                                                  _buildUsernameField(context),
                                                  SizedBox(height: 17.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                          "Mobile Number",
                                                          style: theme.textTheme
                                                              .labelMedium)),
                                                  SizedBox(height: 5.v),
                                                  _buildMobileNumberField(
                                                      context),
                                                  SizedBox(height: 17.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text("Password",
                                                          style: theme.textTheme
                                                              .labelMedium)),
                                                  SizedBox(height: 5.v),
                                                  _buildPasswordField(context),
                                                  SizedBox(height: 14.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                          "Confirm Password (required)",
                                                          style: theme.textTheme
                                                              .labelMedium)),
                                                  SizedBox(height: 4.v),
                                                  _buildConfirmPasswordField(
                                                      context),
                                                  SizedBox(height: 13.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                          "Email Address",
                                                          style: theme.textTheme
                                                              .labelMedium)),
                                                  SizedBox(height: 5.v),
                                                  _buildEmailField(context),
                                                  SizedBox(height: 54.v),
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          right: 4.h),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 102.h,
                                                              vertical: 16.v),
                                                      decoration: AppDecoration
                                                          .outlineBlueGray
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder9),
                                                      child: Text(
                                                          "Create Account",
                                                          style: theme.textTheme
                                                              .titleMedium)),
                                                  SizedBox(height: 10.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "Already have an account?",
                                                                    style: CustomTextStyles
                                                                        .labelMediumOnPrimaryContainer),
                                                                TextSpan(
                                                                    text: " "),
                                                                TextSpan(
                                                                    text:
                                                                        "Login here",
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelMedium)
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left)),
                                                  SizedBox(height: 3.v)
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: EdgeInsets.only(top: 7.v),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgThumbsUp,
                                                      height: 54.v,
                                                      width: 45.h),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 20.h,
                                                          top: 7.v,
                                                          bottom: 7.v),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text: "ez",
                                                                    style: CustomTextStyles
                                                                        .headlineLargeMontserratPrimary),
                                                                TextSpan(
                                                                    text:
                                                                        "-check",
                                                                    style: CustomTextStyles
                                                                        .headlineLargeMontserratBluegray50001)
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            height: 472.v,
                                            width: 411.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.gray300
                                                    .withOpacity(0.6),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        32.h)))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            margin: EdgeInsets.only(left: 15.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 22.h,
                                                vertical: 7.v),
                                            decoration: AppDecoration
                                                .fillOnPrimary
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder32),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height: 7.v,
                                                          width: 45.h,
                                                          decoration: BoxDecoration(
                                                              color: appTheme
                                                                  .gray400,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3.h)))),
                                                  SizedBox(height: 10.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                          "Data & Privacy ",
                                                          style: CustomTextStyles
                                                              .titleLargeMontserratPrimaryBold_1)),
                                                  SizedBox(height: 12.v),
                                                  Container(
                                                      width: 338.h,
                                                      margin: EdgeInsets.only(
                                                          left: 6.h,
                                                          right: 8.h),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "We collect data and personal information which include, but are not limited to, names,  phone numbers, email address and installed application information to improve customer service experience and other legitimate business purposes, which includes sharing the data to a third party to enable fraud-detection services to prevent fraudulenttransactions.  Para tumuloy, kailangan pumayag sa aming policies  Pumapayag ako sa guidelines ng Ez check ",
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium),
                                                                TextSpan(
                                                                    text:
                                                                        "Terms & Conditions",
                                                                    style: CustomTextStyles
                                                                        .titleSmallPrimary),
                                                                TextSpan(
                                                                    text:
                                                                        ". Naintindihan ko rin ang Ez Check ",
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyMedium),
                                                                TextSpan(
                                                                    text:
                                                                        "Privacy Policy at kung paano ginagamit ang aking data para ipaganda ang aking app experience.",
                                                                    style: CustomTextStyles
                                                                        .titleSmallPrimary)
                                                              ]),
                                                          textAlign: TextAlign
                                                              .justify)),
                                                  SizedBox(height: 25.v),
                                                  _buildAgreeAndContinueButton(
                                                      context),
                                                  SizedBox(height: 16.v),
                                                  _buildCancelButton(context),
                                                  SizedBox(height: 16.v)
                                                ])))
                                  ]))))
                ]))));
  }

  /// Section Widget

  Widget _buildFullNameField(BuildContext context) {
    return CustomTextFormField(controller: fullNameFieldController);
  }

  Widget _buildUsernameField(BuildContext context) {
    return CustomTextFormField(controller: usernameFieldController);
  }

  /// Section Widget
  Widget _buildMobileNumberField(BuildContext context) {
    return CustomTextFormField(controller: mobileNumberFieldController);
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return CustomTextFormField(controller: passwordFieldController);
  }

  /// Section Widget
  Widget _buildConfirmPasswordField(BuildContext context) {
    return CustomTextFormField(controller: confirmPasswordFieldController);
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return CustomTextFormField(
        controller: emailFieldController,
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildAgreeAndContinueButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Agree and continue",
        margin: EdgeInsets.only(right: 12.h),
        buttonTextStyle: theme.textTheme.titleMedium!,
        onPressed: () {
          onTapAgreeAndContinueButton(context);
        });
  }

  /// Section Widget
  Widget _buildCancelButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "Cancel", margin: EdgeInsets.only(right: 12.h));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapAgreeAndContinueButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
