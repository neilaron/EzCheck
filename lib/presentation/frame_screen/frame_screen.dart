import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';

class FrameScreen extends StatelessWidget {
  const FrameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.37, -0.06),
                        end: Alignment(0.69, 1.36),
                        colors: [theme.colorScheme.primary, appTheme.teal100])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgGroup7,
                              height: 175.v,
                              width: 146.h,
                              onTap: () {
                                onTapImgImage(context);
                              }),
                          SizedBox(height: 13.v),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "ez",
                                    style: CustomTextStyles
                                        .displayMediumExtraBold),
                                TextSpan(
                                    text: "-check",
                                    style: theme.textTheme.displayMedium)
                              ]),
                              textAlign: TextAlign.left),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Navigates to the privacyActScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
