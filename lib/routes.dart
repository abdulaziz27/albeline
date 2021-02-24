import 'package:flutter/widgets.dart';
import 'package:albeline/ui/uis.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  CreateProductScreen.routeName: (context) => CreateProductScreen(),
  // OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  // CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  NotifScreen.routeName: (context) => NotifScreen(),
  HelpCenterScreen.routeName: (context) => HelpCenterScreen(),
  SettingProfileScreen.routeName: (context) => SettingProfileScreen(),
  AppWorkScreen.routeName: (context) => AppWorkScreen(),
  BuyItemScreen.routeName: (context) => BuyItemScreen(),
  FeaturesCODScreen.routeName: (context) => FeaturesCODScreen(),
};
