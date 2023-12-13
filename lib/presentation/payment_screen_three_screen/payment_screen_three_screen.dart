import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:neil_aron_s_application1/widgets/custom_elevated_button.dart';

class PaymentScreenThreeScreen extends StatelessWidget {
  const PaymentScreenThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: 396.h,
                margin: EdgeInsets.fromLTRB(16.h, 6.v, 16.h, 5.v),
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 27.v),
                decoration: AppDecoration.fillOnPrimary
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder32),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Payment",
                          style:
                              CustomTextStyles.titleLargeMontserratBluegray800),
                      SizedBox(height: 35.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text("Choose payment method",
                                  style: theme.textTheme.labelMedium))),
                      SizedBox(height: 14.v),
                      _buildTelevisionRow(context),
                      SizedBox(height: 45.v),
                      _buildSeventySixColumn(context),
                      SizedBox(height: 13.v),
                      CustomElevatedButton(
                          height: 72.v,
                          text: "Proceed to Checkout",
                          margin: EdgeInsets.only(left: 13.h, right: 16.h),
                          onPressed: () {
                            onTapProceedToCheckout(context);
                          }),
                      SizedBox(height: 3.v)
                    ]))));
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
  Widget _buildTelevisionRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 5.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 28.h, vertical: 31.v),
                  decoration: AppDecoration.gradientPrimaryToPink.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 31.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgTelevision,
                            height: 52.v,
                            width: 74.h),
                        SizedBox(height: 15.v),
                        Text("Pay over the Counter",
                            style: CustomTextStyles.labelMediumOnPrimary)
                      ]))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 5.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 43.h, vertical: 33.v),
                  decoration: AppDecoration.gradientBlueGrayToPurple.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 9.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgMaskGroup,
                            height: 88.v,
                            width: 90.h),
                        Text("Gcash",
                            style: CustomTextStyles.labelMediumOnPrimary)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildSeventySixColumn(BuildContext context) {
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

  /// Navigates to the paymentScreen when the action is triggered.
  onTapProceedToCheckout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentScreen);
  }
}
