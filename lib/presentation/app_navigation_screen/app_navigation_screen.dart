import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.frameScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "privacy act",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.privacyActScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home ",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home  One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ACCOUNT",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Scan Screen One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.scanScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Scan Screen Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.scanScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "QAUNTITY -  One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.qauntityOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "QAUNTITY - ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.qauntityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Quantity",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.quantityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "success scan",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.successScanScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cart Screen- Empty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cartScreenEmptyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cart Screen One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cartScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cart Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.cartScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Scan Screen Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.scanScreenThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Scan Screen Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.scanScreenFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Screen Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "purchase receipt",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.purchaseReceiptScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Screen One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Screen Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentScreenThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Screen Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentScreenFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenFourScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
