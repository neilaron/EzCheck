import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:neil_aron_s_application1/widgets/custom_elevated_button.dart';

class PaymentScreenTwoScreen extends StatelessWidget {
  const PaymentScreenTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: 396.h,
                margin: EdgeInsets.fromLTRB(16.h, 11.v, 16.h, 5.v),
                padding: EdgeInsets.symmetric(horizontal: 11.h),
                decoration: AppDecoration.fillIndigoA
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder32),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgPngTransparent,
                      height: 166.v,
                      width: 366.h),
                  SizedBox(height: 14.v),
                  _buildPaymentScreenTwo(context),
                  SizedBox(height: 26.v),
                  CustomElevatedButton(
                      height: 72.v,
                      text: "PAY PHP 55.00 ",
                      margin: EdgeInsets.only(left: 14.h, right: 17.h),
                      onPressed: () {
                        onTapPAYPHP5500(context);
                      }),
                  SizedBox(height: 5.v)
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

  /// Section Widget
  Widget _buildPaymentScreenTwo(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 33.v),
        decoration: AppDecoration.outlineBlack9004
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text("PAY WITH",
                  style: CustomTextStyles.titleLargeMontserratBlack900Medium),
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.only(right: 41.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 14.v),
                            child: Text("Gcash",
                                style: CustomTextStyles.titleMediumBlack900)),
                        SizedBox(
                            height: 33.v,
                            width: 108.h,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("PHP 5,000",
                                          style: CustomTextStyles
                                              .titleMediumBlack900)),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text("Available Balance",
                                          style: CustomTextStyles
                                              .labelLargeBlack900))
                                ]))
                      ])),
              SizedBox(height: 46.v),
              Text("YOU ARE ABOUT TO PAY",
                  style: CustomTextStyles.titleMediumBlack900_1),
              SizedBox(height: 20.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, right: 4.h),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text("Amount",
                                  style: CustomTextStyles
                                      .bodyLargeNotoSansGray500)),
                          Text("PHP 55.00",
                              style: CustomTextStyles.bodyLargeNotoSansGray500)
                        ]),
                    SizedBox(height: 2.v),
                    Divider(color: appTheme.gray500)
                  ])),
              SizedBox(height: 5.v),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(left: 8.h, right: 13.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 5.v),
                                child: Text("Total",
                                    style:
                                        CustomTextStyles.titleMediumBlack900)),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(top: 5.v),
                                child: Text("PHP",
                                    style:
                                        CustomTextStyles.titleMediumBlack900)),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("55.00",
                                    style: CustomTextStyles
                                        .titleLargeMontserratBlack900Medium))
                          ]))),
              SizedBox(height: 46.v),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      width: 258.h,
                      margin: EdgeInsets.only(left: 40.h, right: 44.h),
                      child: Text(
                          "Please review to ensure the details  \nare correct before you proceed.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleMediumNotoSansGray500)))
            ]));
  }

  /// Navigates to the purchaseReceiptScreen when the action is triggered.
  onTapPAYPHP5500(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.purchaseReceiptScreen);
  }
}
