import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:neil_aron_s_application1/widgets/custom_elevated_button.dart';

class PurchaseReceiptScreen extends StatelessWidget {
  const PurchaseReceiptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: 396.h,
                margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
                padding: EdgeInsets.all(25.h),
                decoration: AppDecoration.fillOnPrimary
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder32),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 119.h),
                          child: Text("Receipt",
                              style: CustomTextStyles
                                  .titleLargeMontserratPrimaryBold))),
                  SizedBox(height: 37.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 7.h, right: 26.h),
                          child: Row(children: [
                            Text("Name of items",
                                style: CustomTextStyles.bodySmall11),
                            Spacer(flex: 45),
                            Text("Quantity",
                                style: CustomTextStyles.bodySmall11),
                            Spacer(flex: 54),
                            Text("Prices", style: CustomTextStyles.bodySmall11)
                          ]))),
                  SizedBox(height: 5.v),
                  Padding(
                      padding: EdgeInsets.only(left: 7.h, right: 4.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Milo 24g Sachet",
                                style: theme.textTheme.titleSmall),
                            Spacer(flex: 39),
                            Text("1", style: theme.textTheme.titleSmall),
                            Spacer(flex: 60),
                            Text("PHP 10.00", style: theme.textTheme.titleSmall)
                          ])),
                  SizedBox(height: 20.v),
                  Padding(
                      padding: EdgeInsets.only(left: 7.h, right: 10.h),
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
                                padding:
                                    EdgeInsets.only(top: 3.v, bottom: 16.v),
                                child: Text("3",
                                    style: theme.textTheme.titleSmall)),
                            Spacer(flex: 71),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 3.v, bottom: 16.v),
                                child: Text("PHP 15.00",
                                    style: theme.textTheme.titleSmall))
                          ])),
                  SizedBox(height: 61.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("Pay over the Counter",
                              style: CustomTextStyles.labelMediumOnPrimary))),
                  SizedBox(height: 18.v),
                  Divider(indent: 6.h, endIndent: 10.h),
                  SizedBox(height: 5.v),
                  Padding(
                      padding: EdgeInsets.only(left: 7.h, right: 10.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text("Total",
                                    style: CustomTextStyles
                                        .bodyLargePrimaryExtraLight)),
                            Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Text("PHP 55.00",
                                    style: theme.textTheme.titleSmall))
                          ])),
                  SizedBox(height: 32.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 12.h, right: 30.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 1.v),
                                    child: Text("Payment",
                                        style: CustomTextStyles
                                            .titleMediumPrimary)),
                                Text("Gcash",
                                    style: CustomTextStyles.titleMediumPrimary)
                              ]))),
                  Spacer(),
                  Text("Thank you for purchasing!",
                      style: theme.textTheme.labelMedium),
                  SizedBox(height: 23.v),
                  CustomElevatedButton(
                      height: 72.v,
                      text: "Proceed to Items Inspection",
                      onPressed: () {
                        onTapProceedToItemsInspection(context);
                      })
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
                textAlign: TextAlign.left)));
  }

  /// Navigates to the paymentScreenFourScreen when the action is triggered.
  onTapProceedToItemsInspection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentScreenFourScreen);
  }
}
