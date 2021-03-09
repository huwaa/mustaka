import 'package:flutter/widgets.dart';

import 'package:thesistest2/screens/splash/splash_screen.dart';

import 'package:thesistest2/screens/sign_up/sign_up_screen.dart';
import 'package:thesistest2/screens/complete_profile/complete_profile_screen.dart';
// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
};