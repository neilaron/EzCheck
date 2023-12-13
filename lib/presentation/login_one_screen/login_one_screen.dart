import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/custom_elevated_button.dart';
import 'package:neil_aron_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginOneScreen extends StatelessWidget {
  LoginOneScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Container(
                        height: 968.v,
                        width: 399.h,
                        margin: EdgeInsets.only(left: 13.h, right: 16.h),
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  margin: EdgeInsets.only(left: 3.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 28.h, vertical: 24.v),
                                  decoration: AppDecoration.fillOnPrimary
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder32),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Login",
                                            style: CustomTextStyles
                                                .titleLargeMontserratPrimaryBold),
                                        SizedBox(height: 41.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Email",
                                                style: theme
                                                    .textTheme.labelMedium)),
                                        SizedBox(height: 4.v),
                                        CustomTextFormField(
                                            controller: emailController),
                                        SizedBox(height: 18.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("Password",
                                                style: theme
                                                    .textTheme.labelMedium)),
                                        SizedBox(height: 5.v),
                                        CustomTextFormField(
                                            controller: passwordController,
                                            textInputAction:
                                                TextInputAction.done),
                                        SizedBox(height: 19.v),
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 143.h,
                                                vertical: 16.v),
                                            decoration: AppDecoration
                                                .fillPrimary
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder9),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(height: 2.v),
                                                  Text("Log in",
                                                      style: theme.textTheme
                                                          .titleMedium)
                                                ])),
                                        SizedBox(height: 9.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "Create another account?",
                                                      style: CustomTextStyles
                                                          .labelMediumOnPrimaryContainer),
                                                  TextSpan(text: " "),
                                                  TextSpan(
                                                      text: "Create account",
                                                      style: CustomTextStyles
                                                          .labelMediumBold)
                                                ]),
                                                textAlign: TextAlign.left)),
                                        SizedBox(height: 9.v)
                                      ]))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 44.v),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgThumbsUp,
                                            height: 54.v,
                                            width: 45.h),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 20.h,
                                                top: 7.v,
                                                bottom: 7.v),
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
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  margin:
                                      EdgeInsets.only(left: 9.h, right: 3.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 21.h, vertical: 10.v),
                                  decoration: AppDecoration.outlineBlack
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder32),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Verification Code",
                                            style: CustomTextStyles
                                                .headlineSmallKameronBlack900),
                                        SizedBox(height: 15.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: 282.h,
                                                margin: EdgeInsets.only(
                                                    left: 10.h, right: 50.h),
                                                child: Text(
                                                    "You will receive a verification code on your email.",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .bodyMediumInterBlack900))),
                                        SizedBox(height: 4.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: 251.h,
                                                margin: EdgeInsets.only(
                                                    left: 10.h, right: 81.h),
                                                child: Text(
                                                    "Kindly enter the Code below and click the box to proceed",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .bodyMediumInterBlack900))),
                                        SizedBox(height: 17.v),
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: "Enter Verification Code",
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 15.v,
                                                    horizontal: 10.h),
                                            fillColor: theme
                                                .colorScheme.onPrimary
                                                .withOpacity(1),
                                            filled: true,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(9.h),
                                              borderSide: BorderSide(
                                                color: appTheme.blueGray50001,
                                                width: 2.h,
                                              ),
                                            ),
                                          ),
                                          textAlign: TextAlign.center,
                                          maxLength: 6,
                                          keyboardType: TextInputType.number,
                                        ),
                                        SizedBox(height: 278.v),
                                        CustomElevatedButton(
                                            text: "DONE",
                                            buttonTextStyle:
                                                theme.textTheme.titleMedium!,
                                            onPressed: () {
                                              onTapDONE(context);
                                            }),
                                        SizedBox(height: 278.v)
                                      ]))),
                          _buildLoginForm(context)
                        ]))))));
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(right: 3.h),
            padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 22.v),
            decoration: AppDecoration.fillOnPrimary1
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder32),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowLeft,
                height: 16.v,
                width: 26.h,
                onTap: () {
                  onTapImgArrowLeft(context);
                })));
  }

  /// Navigates to the splashScreenOneScreen when the action is triggered.
  onTapDONE(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreenOneScreen);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
