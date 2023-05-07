import 'package:brandcrowd/screens/cart/cart_screen.dart';
import 'package:brandcrowd/screens/complete_profile/complete_profile_screen.dart';
import 'package:brandcrowd/screens/details/details_screen.dart';
import 'package:brandcrowd/screens/forgot_password/forgot_password_screen.dart';
import 'package:brandcrowd/screens/home/home_screen.dart';
import 'package:brandcrowd/screens/login_success/login_success_screen.dart';
import 'package:brandcrowd/screens/otp/otp_screen.dart';
import 'package:brandcrowd/screens/profile/profile_screen.dart';
import 'package:brandcrowd/screens/sign_in/sign_in_screen.dart';
import 'package:brandcrowd/screens/sign_up/sign_up_screen.dart';
import 'package:brandcrowd/screens/splash/splash_screen.dart';
//import 'package:brandcrowd/screens/start/start_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  //StartScreen.routeName: (context) => StartScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
