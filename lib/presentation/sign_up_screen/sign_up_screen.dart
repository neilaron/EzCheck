import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/custom_outlined_button.dart';
import 'package:neil_aron_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 44.v),
                  child: Column(children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgThumbsUp,
                          height: 54.v,
                          width: 45.h),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 20.h, top: 7.v, bottom: 7.v),
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
                            horizontal: 25.h, vertical: 24.v),
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder32),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Sign up",
                                  style: CustomTextStyles
                                      .titleLargeMontserratPrimaryBold),
                              SizedBox(height: 30.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Username (required)",
                                      style: theme.textTheme.labelMedium)),
                              SizedBox(height: 4.v),
                              _buildUserName(context),
                              SizedBox(height: 10.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Mobile Number",
                                      style: theme.textTheme.labelMedium)),
                              SizedBox(height: 5.v),
                              _buildMobileNumber(context),
                              SizedBox(height: 10.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Password",
                                      style: theme.textTheme.labelMedium)),
                              SizedBox(height: 5.v),
                              _buildPassword(context),
                              SizedBox(height: 10.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Confirm Password (required)",
                                      style: theme.textTheme.labelMedium)),
                              SizedBox(height: 4.v),
                              _buildConfirmPassword(context),
                              SizedBox(height: 10.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Email Address",
                                      style: theme.textTheme.labelMedium)),
                              SizedBox(height: 5.v),
                              _buildEmail(context),
                              SizedBox(height: 40.v),
                              _buildCreateAccount(context),
                              SizedBox(height: 10.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtAlreadyhavean(context);
                                      },
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "Already have an account?",
                                                style: CustomTextStyles
                                                    .labelMediumOnPrimaryContainer),
                                            TextSpan(text: " "),
                                            TextSpan(
                                                text: "Login here",
                                                style:
                                                    theme.textTheme.labelMedium)
                                          ]),
                                          textAlign: TextAlign.left))),
                              SizedBox(height: 3.v)
                            ])),
                    SizedBox(height: 5.v)
                  ])),
            )));
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(controller: userNameController);
  }

  /// Section Widget
  Widget _buildMobileNumber(BuildContext context) {
    return CustomTextFormField(
      controller: mobileNumberController,
      textInputType: TextInputType.number,
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return CustomTextFormField(
      controller: confirmPasswordController,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController, textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomOutlinedButton(
        text: "Create Account",
        buttonStyle: CustomButtonStyles.outlineBlueGray,
        buttonTextStyle: theme.textTheme.titleMedium!,
        onPressed: () {
          onTapCreateAccount(context);
        });
  }

  /// Navigates to the loginOneScreen when the action is triggered.
  onTapCreateAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginOneScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
