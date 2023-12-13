import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/custom_elevated_button.dart';

class SplashScreenTwoScreen extends StatelessWidget {
  const SplashScreenTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 42.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 16.v,
                          width: 26.h,
                          onTap: () {
                            onTapImgArrowLeft(context);
                          }),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.center,
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Welcome to ",
                                    style:
                                        CustomTextStyles.headlineSmallBold_1),
                                TextSpan(
                                    text: "ez",
                                    style: theme.textTheme.headlineSmall),
                                TextSpan(
                                    text: "-check",
                                    style:
                                        CustomTextStyles.headlineSmallRegular)
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 66.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse8298x298,
                          height: 298.adaptSize,
                          width: 298.adaptSize,
                          radius: BorderRadius.circular(149.h),
                          alignment: Alignment.center),
                      SizedBox(height: 32.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgFrame1,
                          height: 5.v,
                          width: 51.h,
                          alignment: Alignment.center),
                      SizedBox(height: 38.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("Scan the Barcode",
                              style: theme.textTheme.displaySmall)),
                      SizedBox(height: 19.v),
                      Container(
                          width: 351.h,
                          margin: EdgeInsets.only(left: 3.h, right: 24.h),
                          child: Text(
                              "You can scan the barcode on the product to \nupdate it in the cart.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              style: CustomTextStyles.bodyLargePrimary)),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildNextButton(context)));
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Next",
        margin: EdgeInsets.only(left: 44.h, right: 44.h, bottom: 45.v),
        buttonTextStyle: theme.textTheme.titleMedium!,
        onPressed: () {
          onTapNextButton(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the splashScreenThreeScreen when the action is triggered.
  onTapNextButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreenThreeScreen);
  }
}
