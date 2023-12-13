import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/custom_elevated_button.dart';

class SplashScreenThreeScreen extends StatelessWidget {
  const SplashScreenThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 42.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 16.v,
                      width: 26.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 1.h),
                      onTap: () {
                        onTapImgArrowLeft(context);
                      }),
                  SizedBox(height: 15.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Welcome to ",
                            style: CustomTextStyles.headlineSmallBold_1),
                        TextSpan(
                            text: "ez", style: theme.textTheme.headlineSmall),
                        TextSpan(
                            text: "-check",
                            style: CustomTextStyles.headlineSmallRegular)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 66.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse81,
                      height: 298.adaptSize,
                      width: 298.adaptSize,
                      radius: BorderRadius.circular(149.h)),
                  SizedBox(height: 32.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgFrame1Primary,
                      height: 5.v,
                      width: 51.h),
                  SizedBox(height: 41.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text("Start Shopping",
                              style: theme.textTheme.displaySmall))),
                  SizedBox(height: 16.v),
                  Container(
                      width: 378.h,
                      margin: EdgeInsets.only(left: 5.h),
                      child: Text(
                          "Scan the barcode which is in the product, it will\nbe updated in your cart and you can check to\nyour cart to see whether you bought \neverything.",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: CustomTextStyles.bodyLargePrimary)),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildStartButton(context)));
  }

  /// Section Widget
  Widget _buildStartButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Start ",
        margin: EdgeInsets.only(left: 44.h, right: 44.h, bottom: 45.v),
        buttonTextStyle: theme.textTheme.titleMedium!,
        onPressed: () {
          onTapStartButton(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapStartButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
