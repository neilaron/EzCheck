import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:neil_aron_s_application1/widgets/custom_elevated_button.dart';

class HomeOneScreen extends StatelessWidget {
  const HomeOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                child: Column(children: [
                  _buildTryItNow(context),
                  SizedBox(height: 16.v),
                  _buildNinety(context),
                  Spacer(),
                  SizedBox(height: 15.v),
                  _buildHome(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 33.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgThumbsUp,
            margin: EdgeInsets.only(left: 16.h, top: 18.v, bottom: 17.v)),
        title: Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "ez",
                      style: CustomTextStyles
                          .titleLargeMontserratPrimaryExtraBold),
                  TextSpan(
                      text: "-check",
                      style: CustomTextStyles.titleLargeMontserratBluegray50001)
                ]),
                textAlign: TextAlign.left)),
        actions: [
          Container(
              margin: EdgeInsets.fromLTRB(16.h, 17.v, 16.h, 15.v),
              padding: EdgeInsets.all(4.h),
              decoration: AppDecoration.fillPrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
              child: Row(children: [
                Container(
                    height: 13.v,
                    width: 15.h,
                    margin: EdgeInsets.symmetric(vertical: 1.v),
                    decoration: BoxDecoration(
                        color: theme.colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(7.h))),
                AppbarSubtitle(
                    text: "Account",
                    margin: EdgeInsets.only(left: 2.h, top: 1.v, right: 6.h),
                    onTap: () {
                      onTapAccount(context);
                    })
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildTryItNow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 13.v),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Container(
                    decoration: AppDecoration.outlineBlack9001,
                    child: Text("E- Wallet Payment",
                        style: CustomTextStyles.titleSmallPrimary_1)),
                SizedBox(height: 8.v),
                SizedBox(
                    width: 122.h,
                    child: Text("You can make payments\nwith Gcash",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall)),
                SizedBox(height: 9.v),
                CustomImageView(
                    imagePath: ImageConstant.imgMaskGroup,
                    height: 107.adaptSize,
                    width: 107.adaptSize)
              ])),
          Container(
              margin: EdgeInsets.only(left: 12.h),
              padding: EdgeInsets.symmetric(vertical: 11.v),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 6.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup81x81,
                        height: 81.adaptSize,
                        width: 81.adaptSize),
                    Container(
                        margin: EdgeInsets.only(left: 8.h),
                        decoration: AppDecoration.outlineBlack9001,
                        child: Text("New Feature!",
                            style: CustomTextStyles.titleSmallPrimary_1)),
                    SizedBox(height: 5.v),
                    Container(
                        width: 131.h,
                        margin: EdgeInsets.only(left: 8.h),
                        child: Text("You can scan our products\nvia Camera",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall)),
                    SizedBox(height: 5.v),
                    CustomElevatedButton(
                        height: 30.v,
                        width: 175.h,
                        text: "Try it now!",
                        buttonStyle: CustomButtonStyles.outlineBlack,
                        buttonTextStyle: theme.textTheme.labelLarge!,
                        alignment: Alignment.center)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildNinety(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 8.v),
        decoration: AppDecoration.outlineBlack9002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 1.h),
                  decoration: AppDecoration.outlineBlack9001,
                  child: Text("Purchase",
                      style: CustomTextStyles.titleSmallPrimaryContainer)),
              SizedBox(height: 5.v),
              GestureDetector(
                  onTap: () {
                    onTapTxtMonth(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(left: 1.h),
                      decoration: AppDecoration.outlineBlack9001,
                      child: Text(
                          "November 23, 2023                4 items                   Php 55.00",
                          style: CustomTextStyles.bodyMediumPrimaryContainer))),
              SizedBox(height: 38.v)
            ]));
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return SizedBox(
        height: 113.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 36.v, bottom: 15.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 32.h, vertical: 5.v),
                  decoration: AppDecoration.fillPrimaryContainer,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 52.v,
                            width: 95.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 33.h, vertical: 4.v),
                            decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder20),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgHome,
                                height: 24.v,
                                width: 28.h,
                                alignment: Alignment.topCenter)),
                        CustomImageView(
                            imagePath: ImageConstant.imgCart,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            margin: EdgeInsets.only(
                                top: 3.v, right: 33.h, bottom: 18.v),
                            onTap: () {
                              onTapImgCart(context);
                            })
                      ]))),
          Align(
              alignment: Alignment.center,
              child: GestureDetector(
                  onTap: () {
                    onTapEightyEight(context);
                  },
                  child: Container(
                      height: 113.adaptSize,
                      width: 113.adaptSize,
                      padding: EdgeInsets.symmetric(
                          horizontal: 37.h, vertical: 29.v),
                      decoration: AppDecoration.fillPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder56),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgMaskGroup38x38,
                          height: 38.adaptSize,
                          width: 38.adaptSize,
                          alignment: Alignment.topCenter)))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(64.h, 74.v, 64.h, 24.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Home",
                            style: CustomTextStyles.labelMediumOnPrimary),
                        Spacer(flex: 48),
                        Text("Scan", style: theme.textTheme.labelMedium),
                        Spacer(flex: 51),
                        Text("Cart", style: theme.textTheme.labelMedium)
                      ])))
        ]));
  }

  /// Navigates to the accountScreen when the action is triggered.
  onTapAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountScreen);
  }

  /// Navigates to the purchaseReceiptScreen when the action is triggered.
  onTapTxtMonth(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.purchaseReceiptScreen);
  }

  /// Navigates to the cartScreenEmptyScreen when the action is triggered.
  onTapImgCart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartScreenEmptyScreen);
  }

  /// Navigates to the scanScreenOneScreen when the action is triggered.
  onTapEightyEight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.scanScreenOneScreen);
  }
}
