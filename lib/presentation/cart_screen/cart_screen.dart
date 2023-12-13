import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:neil_aron_s_application1/widgets/custom_outlined_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 44.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgMaskGroup38x38,
                                    height: 13.adaptSize,
                                    width: 13.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 1.v, bottom: 3.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 3.h),
                                    child: Text("Scan",
                                        style: CustomTextStyles
                                            .titleSmallPrimarySemiBold_1))
                              ]))),
                  SizedBox(height: 2.v),
                  SizedBox(
                      height: 1259.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 16.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6.h, vertical: 20.v),
                                decoration: AppDecoration.fillOnPrimary
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder32),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Shopping Cart",
                                          style: CustomTextStyles
                                              .titleLargeMontserratPrimaryBold),
                                      SizedBox(height: 46.v),
                                      _buildScanRow(context),
                                      SizedBox(height: 18.v),
                                      _buildKopikoBrownTwinRow(context),
                                      SizedBox(height: 194.v),
                                      Divider(indent: 18.h, endIndent: 21.h),
                                      SizedBox(height: 10.v),
                                      Text(
                                          "TOTAL                             PHP 55.00",
                                          style: CustomTextStyles
                                              .titleLargeMontserratPrimaryBold_1),
                                      SizedBox(height: 71.v),
                                      _buildProceedToPaymentColumn(context),
                                      SizedBox(height: 71.v)
                                    ]))),
                        _buildHomeRow(context),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                height: 113.adaptSize,
                                width: 113.adaptSize,
                                margin: EdgeInsets.only(bottom: 490.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 37.h, vertical: 32.v),
                                decoration: AppDecoration.fillPrimaryContainer
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder56),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgMaskGroup38x38,
                                    height: 38.adaptSize,
                                    width: 38.adaptSize,
                                    alignment: Alignment.topCenter))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(
                                    64.h, 730.v, 64.h, 514.v),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Home",
                                          style: theme.textTheme.labelMedium),
                                      Spacer(flex: 48),
                                      Text("Scan",
                                          style: theme.textTheme.labelMedium),
                                      Spacer(flex: 51),
                                      Text("Cart",
                                          style: CustomTextStyles
                                              .labelMediumOnPrimary)
                                    ]))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 23.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.h, vertical: 19.v),
                                decoration: AppDecoration.outlineBlack900
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder32),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              width: 262.h,
                                              margin: EdgeInsets.only(
                                                  left: 16.h, right: 69.h),
                                              child: Text(
                                                  "Are you sure you want to delete this item?",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .titleLargeMontserratPrimaryBold_1))),
                                      SizedBox(height: 27.v),
                                      CustomOutlinedButton(
                                          height: 49.v,
                                          text: "YES ",
                                          margin: EdgeInsets.only(
                                              left: 2.h, right: 4.h),
                                          buttonStyle: CustomButtonStyles
                                              .outlinePrimaryTL15,
                                          buttonTextStyle: CustomTextStyles
                                              .titleLargeMontserratPrimaryBold_1),
                                      SizedBox(height: 18.v),
                                      CustomOutlinedButton(
                                          height: 49.v,
                                          text: "NO",
                                          margin: EdgeInsets.only(right: 4.h),
                                          buttonStyle: CustomButtonStyles
                                              .outlinePrimaryTL151,
                                          buttonTextStyle: CustomTextStyles
                                              .titleLargeMontserratBold,
                                          onPressed: () {
                                            onTapNO(context);
                                          }),
                                      SizedBox(height: 18.v)
                                    ]))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 483.v,
                                width: 396.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimary
                                        .withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(32.h))))
                      ]))
                ])))));
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

  /// Section Widget
  Widget _buildScanRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12.v),
                  decoration: AppDecoration.outlineBlack9002.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Milo 24g Sachet",
                                      style: CustomTextStyles
                                          .titleLargeMontserratBold),
                                  SizedBox(height: 6.v),
                                  Text("PHP 10.00",
                                      style:
                                          CustomTextStyles.titleSmallOnPrimary)
                                ])),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 6.v),
                            child: _buildKopikoBrownTwinRow2(context,
                                titleLabel: "1"))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgThumbsUpPrimary,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 10.h, top: 28.v, bottom: 25.v))
        ]));
  }

  /// Section Widget
  Widget _buildKopikoBrownTwinRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 7.v),
                  decoration: AppDecoration.outlineBlack9002.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 5.v),
                        Padding(
                            padding: EdgeInsets.only(right: 4.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 173.h,
                                      margin: EdgeInsets.only(bottom: 8.v),
                                      child: Text(
                                          "Kopiko Brown Twin 60g20g Sachet",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .titleMediumBold)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 23.h, top: 15.v),
                                      child: _buildKopikoBrownTwinRow2(context,
                                          titleLabel: "3"))
                                ])),
                        SizedBox(height: 6.v),
                        Text("PHP 15.00",
                            style: CustomTextStyles.titleSmallOnPrimary)
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgThumbsUpPrimary,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 9.h, top: 40.v, bottom: 36.v))
        ]));
  }

  /// Section Widget
  Widget _buildProceedToPaymentColumn(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 64.h, vertical: 15.v),
        decoration: AppDecoration.outlineBlack9002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Text("Proceed to Payment",
            style: CustomTextStyles.titleLargeMontserratBold));
  }

  /// Section Widget
  Widget _buildHomeRow(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 692.v, bottom: 505.v),
            padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 3.v),
            decoration: AppDecoration.fillPrimaryContainer,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgHomePrimary,
                      height: 24.v,
                      width: 28.h,
                      margin:
                          EdgeInsets.only(left: 34.h, top: 6.v, bottom: 25.v)),
                  Container(
                      height: 52.v,
                      width: 95.h,
                      margin: EdgeInsets.only(bottom: 4.v),
                      padding:
                          EdgeInsets.symmetric(horizontal: 31.h, vertical: 5.v),
                      decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgCartOnprimary,
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          alignment: Alignment.topLeft))
                ])));
  }

  /// Common widget
  Widget _buildKopikoBrownTwinRow2(
    BuildContext context, {
    required String titleLabel,
  }) {
    return Container(
        width: 112.h,
        padding: EdgeInsets.all(6.h),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgPlus,
              height: 25.adaptSize,
              width: 25.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 17.h),
              child: Text(titleLabel,
                  style: CustomTextStyles.titleLargeMontserratPrimaryBold_1
                      .copyWith(color: theme.colorScheme.primary))),
          CustomImageView(
              imagePath: ImageConstant.imgContrast,
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.only(left: 17.h))
        ]));
  }

  /// Navigates to the cartScreenOneScreen when the action is triggered.
  onTapNO(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartScreenOneScreen);
  }
}
