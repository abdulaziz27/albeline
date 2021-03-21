import 'package:flutter/widgets.dart';
import 'package:albeline/ui/uis.dart';

final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  // SplashScreen.routeName: (context) => SplashScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  CreateProductScreen.routeName: (context) => CreateProductScreen(),
  // OtpScreen.routeName: (context) => OtpScreen(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ChattScreen.routeName: (context) => ChattScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  NotifScreen.routeName: (context) => NotifScreen(),
  HelpCenterScreen.routeName: (context) => HelpCenterScreen(),
  SettingProfileScreen.routeName: (context) => SettingProfileScreen(),

  // ByCategoryScreen.routeName: (context) => ByCategoryScreen(),
  AppWorkScreen.routeName: (context) => AppWorkScreen(),
  BuyItemScreen.routeName: (context) => BuyItemScreen(),
  FeaturesCODScreen.routeName: (context) => FeaturesCODScreen(),
};
