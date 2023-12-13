import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/custom_app_bar.dart';

class PaymentScreenOneScreen extends StatelessWidget {
  const PaymentScreenOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 6.v),
                    child: Container(
                        height: 1029.v,
                        width: 400.h,
                        margin: EdgeInsets.symmetric(horizontal: 14.h),
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  margin: EdgeInsets.only(right: 4.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.h, vertical: 27.v),
                                  decoration: AppDecoration.fillOnPrimary
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder32),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Payment",
                                            style: CustomTextStyles
                                                .titleLargeMontserratBluegray800),
                                        SizedBox(height: 35.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 6.h),
                                                child: Text(
                                                    "Choose payment method",
                                                    style: CustomTextStyles
                                                        .titleSmallPrimarySemiBold))),
                                        SizedBox(height: 9.v),
                                        _buildPaymentMethodSelection(context),
                                        SizedBox(height: 45.v),
                                        _buildOrderSummary(context),
                                        SizedBox(height: 13.v),
                                        _buildCheckoutButton(context),
                                        SizedBox(height: 3.v)
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  height: 695.v,
                                  width: 396.h,
                                  decoration: BoxDecoration(
                                      color: theme.colorScheme.onPrimary,
                                      borderRadius:
                                          BorderRadius.circular(32.h))))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 32.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgThumbsUp,
            margin: EdgeInsets.only(left: 15.h, top: 18.v, bottom: 17.v)),
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
                textAlign: TextAlign.left)));
  }

  /// Section Widget
  Widget _buildPaymentMethodSelection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 5.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 28.h, vertical: 46.v),
                  decoration: AppDecoration.outlineBluegray800.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgTelevision,
                            height: 52.v,
                            width: 74.h),
                        SizedBox(height: 15.v),
                        Text("Pay over the Counter",
                            style: CustomTextStyles.labelMediumOnPrimary)
                      ]))),
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    onTapFortySeven(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(left: 5.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 43.h, vertical: 28.v),
                      decoration: AppDecoration.outlineBluegray800.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder14),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgMaskGroup,
                            height: 88.v,
                            width: 90.h),
                        SizedBox(height: 20.v),
                        Text("Gcash",
                            style: CustomTextStyles.labelMediumOnPrimary)
                      ]))))
        ]));
  }

  /// Section Widget
  Widget _buildOrderSummary(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        decoration: AppDecoration.outlineBlack9005
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 115.h),
                  child: Text("Amount",
                      style:
                          CustomTextStyles.titleLargeMontserratBluegray800))),
          SizedBox(height: 28.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Milo 24g Sachet", style: theme.textTheme.titleSmall),
                Spacer(flex: 39),
                Text("1", style: theme.textTheme.titleSmall),
                Spacer(flex: 60),
                Text("PHP 10.00", style: theme.textTheme.titleSmall)
              ])),
          SizedBox(height: 20.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h, right: 6.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 142.h,
                        child: Text("Kopiko Brown Twin 60g20g Sachet",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleSmall)),
                    Spacer(flex: 28),
                    Padding(
                        padding: EdgeInsets.only(top: 3.v, bottom: 16.v),
                        child: Text("3", style: theme.textTheme.titleSmall)),
                    Spacer(flex: 71),
                    Padding(
                        padding: EdgeInsets.only(top: 3.v, bottom: 16.v),
                        child: Text("PHP 15.00",
                            style: theme.textTheme.titleSmall))
                  ])),
          SizedBox(height: 13.v),
          Divider(indent: 1.h, endIndent: 7.h),
          SizedBox(height: 4.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h, right: 7.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 4.v),
                        child: Text("Total",
                            style: CustomTextStyles
                                .titleLargeMontserratPrimaryBold)),
                    Padding(
                        padding: EdgeInsets.only(top: 13.v),
                        child: Text("PHP 55.00",
                            style: theme.textTheme.titleSmall))
                  ])),
          SizedBox(height: 22.v)
        ]));
  }

  /// Section Widget
  Widget _buildCheckoutButton(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 13.h, right: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 61.h, vertical: 22.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder9),
        child: Text("Proceed to Checkout",
            style: CustomTextStyles.titleLargeMontserratBold));
  }

  /// Navigates to the paymentScreenThreeScreen when the action is triggered.
  onTapFortySeven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentScreenThreeScreen);
  }
}
