import '../splash_screen_one_screen/widgets/sliderwidget_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';
import 'package:neil_aron_s_application1/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class SplashScreenOneScreen extends StatelessWidget {
  SplashScreenOneScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 26.h, top: 74.v, right: 26.h),
                child: Column(children: [
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Welcome to ",
                            style: CustomTextStyles.headlineSmallBold_1),
                        TextSpan(
                            text: "ez", style: theme.textTheme.headlineSmall),
                        TextSpan(
                            text: "-check",
                            style: CustomTextStyles.headlineSmallRegular)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 66.v),
                  _buildSliderWidget(context),
                  SizedBox(height: 32.v),
                  SizedBox(
                      height: 5.v,
                      child: AnimatedSmoothIndicator(
                          activeIndex: sliderIndex,
                          count: 1,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                              spacing: 8,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: appTheme.blueGray500,
                              dotHeight: 5.v,
                              dotWidth: 5.h))),
                  SizedBox(height: 38.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("Self - checkout",
                              style: theme.textTheme.displaySmall))),
                  SizedBox(height: 19.v),
                  SizedBox(
                      width: 374.h,
                      child: Text(
                          "Now shop at your own pace, save time without\nstanding in the queue for a long time to get\nyour things packed and billed.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: CustomTextStyles.bodyLargePrimary)),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildNextButton(context)));
  }

  /// Section Widget
  Widget _buildSliderWidget(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 39.h),
        child: CarouselSlider.builder(
            options: CarouselOptions(
                height: 298.adaptSize,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  sliderIndex = index;
                }),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return SliderwidgetItemWidget();
            }));
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

  /// Navigates to the splashScreenTwoScreen when the action is triggered.
  onTapNextButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreenTwoScreen);
  }
}
