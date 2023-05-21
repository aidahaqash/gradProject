import 'package:brandcrowd/screens/add_cat/add_cat_screen.dart';
import 'package:brandcrowd/screens/add_product/add_product_screen.dart';
import 'package:brandcrowd/screens/add_shop/add_shop_screen.dart';
import 'package:brandcrowd/screens/cart/cart_screen.dart';
import 'package:brandcrowd/screens/complete_profile/complete_profile_screen.dart';
import 'package:brandcrowd/screens/customer_shops/customer_shops_screen.dart';
import 'package:brandcrowd/screens/details/details_screen.dart';
import 'package:brandcrowd/screens/edit_shop/edit_shop_screen.dart';
import 'package:brandcrowd/screens/forgot_password/forgot_password_screen.dart';
import 'package:brandcrowd/screens/home/home_screen.dart';
import 'package:brandcrowd/screens/login_success/login_success_screen.dart';
import 'package:brandcrowd/screens/otp/otp_screen.dart';
import 'package:brandcrowd/screens/owner_shops/owner_shops_screen.dart';
import 'package:brandcrowd/screens/profile/profile_screen.dart';

import 'package:brandcrowd/screens/sign_in/sign_in_screen.dart';
import 'package:brandcrowd/screens/sign_up/sign_up_screen.dart';
import 'package:brandcrowd/screens/customer_splash/customer_splash_screen.dart';
import 'package:brandcrowd/screens/welcome/welcome_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  ShopsScreen.routeName: (context) => ShopsScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  OwnerShopsScreen.routeName: (context) => OwnerShopsScreen(),
  AddShopScreen.routeName: (context) => AddShopScreen(),
  EditShopScreen.routeName: (context) => EditShopScreen(),
  AddProductScreen.routeName: (context) => AddProductScreen(),
  AddCatScreen.routeName: (context) => AddCatScreen(),
};
