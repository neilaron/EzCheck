import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/custom_app_bar.dart';

class CartScreenEmptyScreen extends StatelessWidget {
  const CartScreenEmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                height: 816.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 13.v),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          margin: EdgeInsets.only(
                              left: 16.h, right: 16.h, bottom: 7.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 75.h, vertical: 20.v),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder32),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Text("Shopping Cart",
                                style: CustomTextStyles
                                    .titleLargeMontserratPrimaryBold),
                            Spacer(flex: 41),
                            CustomImageView(
                                imagePath: ImageConstant.imgIconBoxIso,
                                height: 122.v,
                                width: 120.h),
                            SizedBox(height: 20.v),
                            Text("Your cart is Empty",
                                style: CustomTextStyles
                                    .titleLargeMontserratPrimaryBold),
                            SizedBox(height: 10.v),
                            SizedBox(
                                width: 242.h,
                                child: Text(
                                    "Looks like you haven’t added any products \nin your cart yet.",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.labelMedium)),
                            Spacer(flex: 58)
                          ]))),
                  _buildEightyThree(context),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: EdgeInsets.only(
                              left: 157.h, right: 157.h, bottom: 20.v),
                          decoration: AppDecoration.fillPurple.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder56),
                          child: GestureDetector(
                              onTap: () {
                                onTapEightyOne(context);
                              },
                              child: Container(
                                  height: 113.adaptSize,
                                  width: 113.adaptSize,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 37.h, vertical: 32.v),
                                  decoration: AppDecoration.fillPrimaryContainer
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder56),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgMaskGroup38x38,
                                      height: 38.adaptSize,
                                      width: 38.adaptSize,
                                      alignment: Alignment.topCenter))))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(64.h, 730.v, 64.h, 45.v),
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
                                        .labelMediumPrimaryContainer)
                              ])))
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
  Widget _buildEightyThree(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 692.v, bottom: 35.v),
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
                          EdgeInsets.only(left: 34.h, top: 6.v, bottom: 25.v),
                      onTap: () {
                        onTapImgHome(context);
                      }),
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

  /// Navigates to the homeScreen when the action is triggered.
  onTapImgHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the scanScreenOneScreen when the action is triggered.
  onTapEightyOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.scanScreenOneScreen);
  }
}
