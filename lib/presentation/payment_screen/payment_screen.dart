import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:neil_aron_s_application1/widgets/custom_elevated_button.dart';
import 'package:neil_aron_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PaymentScreen extends StatelessWidget {
  PaymentScreen({Key? key}) : super(key: key);

  TextEditingController mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: 396.h,
                margin: EdgeInsets.fromLTRB(16.h, 6.v, 16.h, 5.v),
                padding: EdgeInsets.symmetric(horizontal: 11.h),
                decoration: AppDecoration.fillIndigoA
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder32),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgPngTransparent,
                      height: 166.v,
                      width: 366.h),
                  SizedBox(height: 17.v),
                  Text("Login to pay with GCash",
                      style: CustomTextStyles.titleLargeMontserrat),
                  SizedBox(height: 20.v),
                  Padding(
                      padding: EdgeInsets.only(left: 24.h, right: 20.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Mobile Number:",
                                style: CustomTextStyles
                                    .bodySmallNotoSansOnPrimary),
                            SizedBox(height: 2.v),
                            CustomTextFormField(
                                controller: mobileNumberController,
                                hintText: "+639 123 456 7890",
                                textInputAction: TextInputAction.done,
                                borderDecoration:
                                    TextFormFieldStyleHelper.underLineOnPrimary,
                                filled: false)
                          ])),
                  SizedBox(height: 51.v),
                  _buildPaymentDetails(context),
                  SizedBox(height: 26.v),
                  CustomElevatedButton(
                      height: 72.v,
                      text: "Next",
                      margin: EdgeInsets.only(left: 14.h, right: 17.h),
                      onPressed: () {
                        onTapNext(context);
                      }),
                  SizedBox(height: 5.v)
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
  Widget _buildPaymentDetails(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
        decoration: AppDecoration.outlineBlack9004
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 115.h),
                      child: Text("Amount",
                          style: CustomTextStyles
                              .titleLargeMontserratBlack900Bold))),
              SizedBox(height: 28.v),
              Padding(
                  padding: EdgeInsets.only(left: 2.h),
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
                            child:
                                Text("3", style: theme.textTheme.titleSmall)),
                        Spacer(flex: 71),
                        Padding(
                            padding: EdgeInsets.only(top: 3.v, bottom: 16.v),
                            child: Text("PHP 15.00",
                                style: theme.textTheme.titleSmall))
                      ])),
              SizedBox(height: 13.v),
              SizedBox(
                  height: 1.v,
                  width: 329.h,
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(width: 329.h, child: Divider())),
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(width: 329.h, child: Divider()))
                  ])),
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
                      ]))
            ]));
  }

  /// Navigates to the paymentScreenTwoScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentScreenTwoScreen);
  }
}
