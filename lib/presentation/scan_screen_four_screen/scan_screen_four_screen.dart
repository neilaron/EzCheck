import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';

class ScanScreenFourScreen extends StatelessWidget {
  const ScanScreenFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 6.v),
                child: Column(children: [
                  SizedBox(height: 5.v),
                  Container(
                      width: 378.h,
                      margin: EdgeInsets.only(left: 2.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 11.h, vertical: 15.v),
                      decoration: AppDecoration.outlineOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder32),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgThumbsUp,
                                  height: 20.v,
                                  width: 17.h,
                                  margin:
                                      EdgeInsets.only(top: 2.v, bottom: 1.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 4.h),
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
                            ]),
                        SizedBox(height: 12.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgCart,
                                      height: 15.adaptSize,
                                      width: 15.adaptSize,
                                      margin: EdgeInsets.only(bottom: 3.v)),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtMyCart(context);
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 4.h),
                                          child: Text("My cart",
                                              style: CustomTextStyles
                                                  .titleSmallPrimarySemiBold_1)))
                                ])),
                        SizedBox(height: 2.v),
                        Container(
                            height: 445.v,
                            width: 318.h,
                            padding: EdgeInsets.symmetric(horizontal: 32.h),
                            decoration: AppDecoration.fillPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder25),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgScreenshot2023,
                                height: 154.v,
                                width: 253.h,
                                alignment: Alignment.center)),
                        SizedBox(height: 39.v),
                        Container(
                            width: 273.h,
                            margin: EdgeInsets.only(left: 36.h, right: 37.h),
                            child: Text(
                                "Align the product barcode\nwithin the frame to scan.",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .titleLargeMontserratBlack900SemiBold)),
                        SizedBox(height: 54.v),
                        GestureDetector(
                            onTap: () {
                              onTapWidget(context);
                            },
                            child: Container(
                                height: 113.adaptSize,
                                width: 113.adaptSize,
                                padding: EdgeInsets.all(37.h),
                                decoration: AppDecoration.fillPrimary.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder56),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgMaskGroup38x38,
                                    height: 38.adaptSize,
                                    width: 38.adaptSize,
                                    alignment: Alignment.center))),
                        SizedBox(height: 49.v)
                      ]))
                ]))));
  }

  /// Navigates to the cartScreenOneScreen when the action is triggered.
  onTapTxtMyCart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartScreenOneScreen);
  }

  /// Navigates to the quantityScreen when the action is triggered.
  onTapWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.quantityScreen);
  }
}
