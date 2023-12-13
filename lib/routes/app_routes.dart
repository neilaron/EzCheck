import 'package:flutter/material.dart';
import 'package:neil_aron_s_application1/presentation/frame_one_screen/frame_one_screen.dart';
import 'package:neil_aron_s_application1/presentation/frame_screen/frame_screen.dart';
import 'package:neil_aron_s_application1/presentation/privacy_act_screen/privacy_act_screen.dart';
import 'package:neil_aron_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:neil_aron_s_application1/presentation/login_screen/login_screen.dart';
import 'package:neil_aron_s_application1/presentation/login_one_screen/login_one_screen.dart';
import 'package:neil_aron_s_application1/presentation/splash_screen_one_screen/splash_screen_one_screen.dart';
import 'package:neil_aron_s_application1/presentation/splash_screen_two_screen/splash_screen_two_screen.dart';
import 'package:neil_aron_s_application1/presentation/splash_screen_three_screen/splash_screen_three_screen.dart';
import 'package:neil_aron_s_application1/presentation/home_screen/home_screen.dart';
import 'package:neil_aron_s_application1/presentation/home_one_screen/home_one_screen.dart';
import 'package:neil_aron_s_application1/presentation/account_screen/account_screen.dart';
import 'package:neil_aron_s_application1/presentation/scan_screen_one_screen/scan_screen_one_screen.dart';
import 'package:neil_aron_s_application1/presentation/scan_screen_two_screen/scan_screen_two_screen.dart';
import 'package:neil_aron_s_application1/presentation/qauntity_one_screen/qauntity_one_screen.dart';
import 'package:neil_aron_s_application1/presentation/qauntity_screen/qauntity_screen.dart';
import 'package:neil_aron_s_application1/presentation/quantity_screen/quantity_screen.dart';
import 'package:neil_aron_s_application1/presentation/success_scan_screen/success_scan_screen.dart';
import 'package:neil_aron_s_application1/presentation/cart_screen_empty_screen/cart_screen_empty_screen.dart';
import 'package:neil_aron_s_application1/presentation/cart_screen_one_screen/cart_screen_one_screen.dart';
import 'package:neil_aron_s_application1/presentation/cart_screen/cart_screen.dart';
import 'package:neil_aron_s_application1/presentation/scan_screen_three_screen/scan_screen_three_screen.dart';
import 'package:neil_aron_s_application1/presentation/scan_screen_four_screen/scan_screen_four_screen.dart';
import 'package:neil_aron_s_application1/presentation/payment_screen_two_screen/payment_screen_two_screen.dart';
import 'package:neil_aron_s_application1/presentation/purchase_receipt_screen/purchase_receipt_screen.dart';
import 'package:neil_aron_s_application1/presentation/payment_screen_one_screen/payment_screen_one_screen.dart';
import 'package:neil_aron_s_application1/presentation/payment_screen_three_screen/payment_screen_three_screen.dart';
import 'package:neil_aron_s_application1/presentation/payment_screen/payment_screen.dart';
import 'package:neil_aron_s_application1/presentation/payment_screen_four_screen/payment_screen_four_screen.dart';
import 'package:neil_aron_s_application1/presentation/splash_screen_four_screen/splash_screen_four_screen.dart';
import 'package:neil_aron_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String frameOneScreen = '/frame_one_screen';

  static const String frameScreen = '/frame_screen';

  static const String privacyActScreen = '/privacy_act_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String splashScreenOneScreen = '/splash_screen_one_screen';

  static const String splashScreenTwoScreen = '/splash_screen_two_screen';

  static const String splashScreenThreeScreen = '/splash_screen_three_screen';

  static const String homeScreen = '/home_screen';

  static const String homeOneScreen = '/home_one_screen';

  static const String accountScreen = '/account_screen';

  static const String scanScreenOneScreen = '/scan_screen_one_screen';

  static const String scanScreenTwoScreen = '/scan_screen_two_screen';

  static const String qauntityOneScreen = '/qauntity_one_screen';

  static const String qauntityScreen = '/qauntity_screen';

  static const String quantityScreen = '/quantity_screen';

  static const String successScanScreen = '/success_scan_screen';

  static const String cartScreenEmptyScreen = '/cart_screen_empty_screen';

  static const String cartScreenOneScreen = '/cart_screen_one_screen';

  static const String cartScreen = '/cart_screen';

  static const String scanScreenThreeScreen = '/scan_screen_three_screen';

  static const String scanScreenFourScreen = '/scan_screen_four_screen';

  static const String paymentScreenTwoScreen = '/payment_screen_two_screen';

  static const String purchaseReceiptScreen = '/purchase_receipt_screen';

  static const String paymentScreenOneScreen = '/payment_screen_one_screen';

  static const String paymentScreenThreeScreen = '/payment_screen_three_screen';

  static const String paymentScreen = '/payment_screen';

  static const String paymentScreenFourScreen = '/payment_screen_four_screen';

  static const String splashScreenFourScreen = '/splash_screen_four_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    frameOneScreen: (context) => FrameOneScreen(),
    frameScreen: (context) => FrameScreen(),
    privacyActScreen: (context) => PrivacyActScreen(),
    signUpScreen: (context) => SignUpScreen(),
    loginScreen: (context) => LoginScreen(),
    loginOneScreen: (context) => LoginOneScreen(),
    splashScreenOneScreen: (context) => SplashScreenOneScreen(),
    splashScreenTwoScreen: (context) => SplashScreenTwoScreen(),
    splashScreenThreeScreen: (context) => SplashScreenThreeScreen(),
    homeScreen: (context) => HomeScreen(),
    homeOneScreen: (context) => HomeOneScreen(),
    accountScreen: (context) => AccountScreen(),
    scanScreenOneScreen: (context) => ScanScreenOneScreen(),
    scanScreenTwoScreen: (context) => ScanScreenTwoScreen(),
    qauntityOneScreen: (context) => QauntityOneScreen(),
    qauntityScreen: (context) => QauntityScreen(),
    quantityScreen: (context) => QuantityScreen(),
    successScanScreen: (context) => SuccessScanScreen(),
    cartScreenEmptyScreen: (context) => CartScreenEmptyScreen(),
    cartScreenOneScreen: (context) => CartScreenOneScreen(),
    cartScreen: (context) => CartScreen(),
    scanScreenThreeScreen: (context) => ScanScreenThreeScreen(),
    scanScreenFourScreen: (context) => ScanScreenFourScreen(),
    paymentScreenTwoScreen: (context) => PaymentScreenTwoScreen(),
    purchaseReceiptScreen: (context) => PurchaseReceiptScreen(),
    paymentScreenOneScreen: (context) => PaymentScreenOneScreen(),
    paymentScreenThreeScreen: (context) => PaymentScreenThreeScreen(),
    paymentScreen: (context) => PaymentScreen(),
    paymentScreenFourScreen: (context) => PaymentScreenFourScreen(),
    splashScreenFourScreen: (context) => SplashScreenFourScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
