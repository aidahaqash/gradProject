import 'package:brandcrowd/screens/forgot_password/forgot_password_screen.dart';
import 'package:brandcrowd/screens/login_success/login_success_screen.dart';
import 'package:brandcrowd/screens/sign_in/sign_in_screen.dart';
import 'package:brandcrowd/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
};
