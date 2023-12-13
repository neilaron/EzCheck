import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:neil_aron_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:neil_aron_s_application1/widgets/custom_elevated_button.dart';

class PaymentScreenFourScreen extends StatelessWidget {
  const PaymentScreenFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: 396.h,
                margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 26.v),
                decoration: AppDecoration.fillOnPrimary
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder32),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text("Payment",
                      style: CustomTextStyles.titleLargeMontserratPrimaryBold),
                  Spacer(flex: 46),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: 135.v,
                          width: 226.h,
                          margin: EdgeInsets.only(left: 16.h),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(top: 37.v),
                                        child: Text("Pay over the Counter",
                                            style: CustomTextStyles
                                                .labelMediumOnPrimary))),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIconCheckCircled,
                                    height: 135.adaptSize,
                                    width: 135.adaptSize,
                                    alignment: Alignment.centerRight)
                              ]))),
                  SizedBox(height: 22.v),
                  Text("Payment Successful!",
                      style:
                          CustomTextStyles.titleLargeMontserratPrimaryBold_1),
                  SizedBox(height: 2.v),
                  Text("Thank you for purchasing!",
                      style: theme.textTheme.labelMedium),
                  Spacer(flex: 53),
                  CustomElevatedButton(
                      height: 72.v,
                      text: "Done",
                      onPressed: () {
                        onTapDone(context);
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

  /// Navigates to the splashScreenFourScreen when the action is triggered.
  onTapDone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreenFourScreen);
  }
}
