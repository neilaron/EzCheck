import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/custom_elevated_button.dart';
import 'package:neil_aron_s_application1/widgets/custom_icon_button.dart';
import 'package:neil_aron_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class QauntityOneScreen extends StatelessWidget {
  QauntityOneScreen({Key? key}) : super(key: key);

  TextEditingController nestleGlobalController = TextEditingController();

  TextEditingController productNameController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildProductDetails(context),
                  SizedBox(height: 20.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgScreenshot2023176x133,
                      height: 176.v,
                      width: 133.h),
                  SizedBox(height: 23.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 32.h),
                          child: Text("Product Group",
                              style: CustomTextStyles
                                  .titleMediumBlack900SemiBold))),
                  SizedBox(height: 7.v),
                  _buildNestleGlobal(context),
                  SizedBox(height: 9.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 32.h),
                          child: Text("Product Name",
                              style: CustomTextStyles
                                  .titleMediumBlack900SemiBold))),
                  SizedBox(height: 10.v),
                  _buildProductName(context),
                  SizedBox(height: 10.v),
                  _buildPriceRow(context),
                  SizedBox(height: 15.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage15,
                        height: 29.adaptSize,
                        width: 29.adaptSize,
                        margin: EdgeInsets.only(top: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 28.h),
                        child: Text("0",
                            style: CustomTextStyles.headlineSmallBlack900)),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage14,
                        height: 29.adaptSize,
                        width: 29.adaptSize,
                        margin: EdgeInsets.only(left: 20.h, top: 1.v),
                        onTap: () {
                          onTapImgImageFourteen(context);
                        })
                  ]),
                  SizedBox(height: 19.v),
                  _buildAddToCart(context),
                  SizedBox(height: 20.v),
                  _buildHomeStack(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildProductDetails(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 43.h, vertical: 13.v),
        decoration: AppDecoration.outlineBlack9003,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 16.v),
              Text("PRODUCT DETAILS",
                  style: CustomTextStyles.titleLargeMontserratBlack900)
            ]));
  }

  /// Section Widget
  Widget _buildNestleGlobal(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 32.h, right: 31.h),
        child: CustomTextFormField(
            controller: nestleGlobalController,
            hintText: "Nestlé Global.",
            borderDecoration: TextFormFieldStyleHelper.underLineBlack,
            filled: false));
  }

  /// Section Widget
  Widget _buildProductName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 32.h, right: 31.h),
        child: CustomTextFormField(
            controller: productNameController,
            hintText: "Nestle Milo 24g",
            borderDecoration: TextFormFieldStyleHelper.underLineBlack,
            filled: false));
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return CustomTextFormField(
        width: 171.h,
        controller: priceController,
        hintText: "10.00",
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.underLineBlack,
        filled: false);
  }

  /// Section Widget
  Widget _buildPriceRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 31.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgMaskGroup34x34,
                          height: 34.adaptSize,
                          width: 34.adaptSize,
                          margin: EdgeInsets.only(top: 9.v, bottom: 5.v)),
                      Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Product Code",
                                    style: CustomTextStyles.bodyLargeGray600),
                                SizedBox(height: 9.v),
                                Text("89983121001702",
                                    style: CustomTextStyles.bodyLargeGray600)
                              ]))
                    ]),
                    SizedBox(height: 8.v),
                    Divider(),
                    SizedBox(height: 8.v),
                    Text("Price",
                        style: CustomTextStyles.titleMediumBlack900SemiBold),
                    SizedBox(height: 9.v),
                    _buildPrice(context),
                    SizedBox(height: 22.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 64.h),
                            child: Text("Quantity",
                                style: CustomTextStyles
                                    .titleLargeMontserratBlack900SemiBold)))
                  ])),
              Container(
                  height: 33.v,
                  width: 74.h,
                  margin: EdgeInsets.only(top: 25.v, bottom: 115.v),
                  padding: EdgeInsets.all(4.h),
                  decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14),
                  child: CustomIconButton(
                      height: 25.adaptSize,
                      width: 25.adaptSize,
                      padding: EdgeInsets.all(4.h),
                      alignment: Alignment.centerLeft,
                      child:
                          CustomImageView(imagePath: ImageConstant.imgGroup41)))
            ]));
  }

  /// Section Widget
  Widget _buildAddToCart(BuildContext context) {
    return CustomElevatedButton(
        height: 54.v,
        width: 229.h,
        text: "Add to Cart",
        buttonStyle: CustomButtonStyles.fillBlueGray,
        buttonTextStyle: CustomTextStyles.titleLargeMontserratBlack900SemiBold);
  }

  /// Section Widget
  Widget _buildHomeStack(BuildContext context) {
    return SizedBox(
        height: 113.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(bottom: 15.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 63.h, vertical: 2.v),
                  decoration: AppDecoration.fillPrimaryContainer,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                        padding: EdgeInsets.only(left: 3.h, right: 2.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgHomePrimary,
                                  height: 24.v,
                                  width: 28.h,
                                  margin:
                                      EdgeInsets.only(top: 1.v, bottom: 4.v),
                                  onTap: () {
                                    onTapImgHome(context);
                                  }),
                              CustomImageView(
                                  imagePath: ImageConstant.imgCartPrimary,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize)
                            ])),
                    SizedBox(height: 6.v),
                    Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Home",
                                  style: CustomTextStyles
                                      .labelMediumOnPrimaryContainer_1),
                              Text("Cart",
                                  style: CustomTextStyles
                                      .labelMediumOnPrimaryContainer_1)
                            ])),
                    SizedBox(height: 6.v)
                  ]))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 157.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 37.h, vertical: 24.v),
                  decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder56),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup38x38,
                        height: 38.adaptSize,
                        width: 38.adaptSize),
                    SizedBox(height: 11.v),
                    Text("Scan", style: CustomTextStyles.labelMediumOnPrimary)
                  ])))
        ]));
  }

  /// Navigates to the qauntityScreen when the action is triggered.
  onTapImgImageFourteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.qauntityScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapImgHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
