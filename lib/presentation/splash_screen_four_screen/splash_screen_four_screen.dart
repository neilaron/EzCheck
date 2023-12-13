import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/custom_elevated_button.dart';

class SplashScreenFourScreen extends StatelessWidget {
  const SplashScreenFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Welcome to ",
                                style: CustomTextStyles.headlineSmallBold_1),
                            TextSpan(
                                text: "ez",
                                style: theme.textTheme.headlineSmall),
                            TextSpan(
                                text: "-check",
                                style: CustomTextStyles.headlineSmallRegular)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 66.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse82,
                          height: 298.adaptSize,
                          width: 298.adaptSize,
                          radius: BorderRadius.circular(149.h)),
                      SizedBox(height: 48.v),
                      Text("Your Items will be pack and inspect",
                          style: CustomTextStyles
                              .titleLargeMontserratPrimaryBold_1),
                      SizedBox(height: 65.v),
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
            bottomNavigationBar: _buildDoneButton(context)));
  }

  /// Section Widget
  Widget _buildDoneButton(BuildContext context) {
    return CustomElevatedButton(
        text: "DONE",
        margin: EdgeInsets.only(left: 44.h, right: 44.h, bottom: 45.v),
        buttonTextStyle: theme.textTheme.titleMedium!,
        onPressed: () {
          onTapDoneButton(context);
        });
  }

  /// Navigates to the homeOneScreen when the action is triggered.
  onTapDoneButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeOneScreen);
  }
}
