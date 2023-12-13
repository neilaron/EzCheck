import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:neil_aron_s_application1/widgets/custom_outlined_button.dart';
import 'package:neil_aron_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AccountScreen extends StatelessWidget {
  AccountScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 16.h, right: 30.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.h, vertical: 13.v),
                              decoration: AppDecoration.outlineBlack900
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder14),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: 14.h),
                                        decoration:
                                            AppDecoration.outlineBlack9001,
                                        child: Text("MY ACCOUNT",
                                            style: CustomTextStyles
                                                .headlineSmallBold_2)),
                                    SizedBox(height: 16.v),
                                    _buildUserProfile(context),
                                    SizedBox(height: 4.v),
                                    _buildEmail(context),
                                    SizedBox(height: 8.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 19.h),
                                        child: Text("Mobile Number",
                                            style:
                                                theme.textTheme.labelMedium)),
                                    SizedBox(height: 4.v),
                                    _buildMobileNumber(context),
                                    SizedBox(height: 8.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 19.h),
                                        child: Text("Password",
                                            style:
                                                theme.textTheme.labelMedium)),
                                    SizedBox(height: 4.v),
                                    _buildPassword(context),
                                    SizedBox(height: 26.v),
                                    Container(
                                        width: 202.h,
                                        margin: EdgeInsets.only(left: 15.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5.h, vertical: 4.v),
                                        decoration: AppDecoration
                                            .outlineBluegray50001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder9),
                                        child: Text("Customer Service",
                                            style: CustomTextStyles
                                                .bodyMediumLight)),
                                    Spacer(),
                                    _buildSignOut(context)
                                  ]))),
                      SizedBox(height: 99.v),
                      _buildHome(context),
                      SizedBox(height: 5.v)
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

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(width: 205.h, controller: userNameController);
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    height: 121.v,
                    width: 134.h,
                    decoration: BoxDecoration(
                        color: appTheme.gray40001,
                        borderRadius: BorderRadius.circular(67.h))),
                SizedBox(height: 10.v),
                Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text("Email Address",
                        style: theme.textTheme.labelMedium))
              ]),
              Padding(
                  padding: EdgeInsets.only(top: 22.v, bottom: 69.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text("Username ",
                                style: theme.textTheme.labelMedium)),
                        SizedBox(height: 3.v),
                        _buildUserName(context)
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 19.h),
        child: CustomTextFormField(width: 244.h, controller: emailController));
  }

  /// Section Widget
  Widget _buildMobileNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 19.h),
        child: CustomTextFormField(
            width: 244.h, controller: mobileNumberController));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 19.h),
        child: CustomTextFormField(
            width: 244.h,
            controller: passwordController,
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildSignOut(BuildContext context) {
    return CustomOutlinedButton(
        height: 38.v,
        width: 202.h,
        text: "SIGN OUT",
        buttonStyle: CustomButtonStyles.outlineBlueGrayTL9,
        buttonTextStyle: CustomTextStyles.titleLargeMontserratPrimary,
        onPressed: () {
          onTapSignOut(context);
        },
        alignment: Alignment.center);
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
                        GestureDetector(
                            onTap: () {
                              onTapHome(context);
                            },
                            child: Container(
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
                                    alignment: Alignment.topCenter))),
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
                    onTapWidget(context);
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

  /// Navigates to the loginScreen when the action is triggered.
  onTapSignOut(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the cartScreenEmptyScreen when the action is triggered.
  onTapImgCart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartScreenEmptyScreen);
  }

  /// Navigates to the scanScreenOneScreen when the action is triggered.
  onTapWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.scanScreenOneScreen);
  }
}
