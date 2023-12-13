import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';

class FrameOneScreen extends StatelessWidget {
  const FrameOneScreen({Key? key}) : super(key: key);

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
                        colors: [
                      theme.colorScheme.primary,
                      appTheme.blueGray400,
                      appTheme.teal100
                    ])),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(top: 268.v),
                    child: Column(children: [
                      SizedBox(height: 5.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup7,
                          height: 175.v,
                          width: 146.h,
                          onTap: () {
                            onTapImgImage(context);
                          })
                    ])))));
  }

  /// Navigates to the frameScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameScreen);
  }
}
