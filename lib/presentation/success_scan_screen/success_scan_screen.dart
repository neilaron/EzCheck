import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:neil_aron_s_application1/widgets/custom_elevated_button.dart';

class SuccessScanScreen extends StatelessWidget {
  const SuccessScanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: 396.h,
                margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 20.v),
                decoration: AppDecoration.fillOnPrimary
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder32),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(flex: 60),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: 135.v,
                              width: 226.h,
                              margin: EdgeInsets.only(left: 16.h),
                              child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(top: 37.v),
                                            child: Text("Pay over the Counter",
                                                style: CustomTextStyles
                                                    .labelMediumOnPrimary))),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIconCheckCircled,
                                        height: 135.adaptSize,
                                        width: 135.adaptSize,
                                        alignment: Alignment.centerRight)
                                  ]))),
                      SizedBox(height: 19.v),
                      Text("Product added to cart!",
                          style: CustomTextStyles
                              .titleLargeMontserratPrimaryBold_1),
                      Spacer(flex: 39),
                      CustomElevatedButton(
                          height: 72.v,
                          text: "View Cart",
                          buttonStyle: CustomButtonStyles.outlineBlackTL15,
                          onPressed: () {
                            onTapViewCart(context);
                          }),
                      SizedBox(height: 14.v),
                      CustomElevatedButton(
                          height: 72.v,
                          text: "Scan another item",
                          buttonStyle: CustomButtonStyles.outlineBlackTL151,
                          onPressed: () {
                            onTapScanAnotherItem(context);
                          })
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 33.h,
        leading: Container(
            height: 20.v,
            width: 17.h,
            margin: EdgeInsets.only(left: 16.h, top: 18.v, bottom: 17.v),
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgThumbsUpPinkA700,
                  height: 20.v,
                  width: 17.h,
                  alignment: Alignment.centerLeft),
              CustomImageView(
                  imagePath: ImageConstant.imgThumbsUp,
                  height: 20.v,
                  width: 17.h,
                  alignment: Alignment.center)
            ])),
        title: Container(
            height: 25.v,
            width: 92.h,
            margin: EdgeInsets.only(left: 4.h),
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "ez",
                            style:
                                CustomTextStyles.titleLargeMontserratOnError),
                        TextSpan(
                            text: "-check",
                            style:
                                CustomTextStyles.titleLargeMontserratPinkA700)
                      ]),
                      textAlign: TextAlign.left)),
              Align(
                  alignment: Alignment.center,
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "ez",
                            style: CustomTextStyles
                                .titleLargeMontserratPrimaryExtraBold),
                        TextSpan(
                            text: "-check",
                            style: CustomTextStyles
                                .titleLargeMontserratBluegray50001)
                      ]),
                      textAlign: TextAlign.left))
            ])));
  }

  /// Navigates to the cartScreenOneScreen when the action is triggered.
  onTapViewCart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartScreenOneScreen);
  }

  /// Navigates to the scanScreenThreeScreen when the action is triggered.
  onTapScanAnotherItem(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.scanScreenThreeScreen);
  }
}
