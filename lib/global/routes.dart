import 'package:flutter/material.dart';
import 'package:sex_shopp_aplication/screens/cart/screen/cart_screen.dart';
import 'package:sex_shopp_aplication/screens/complete_profile/screen/complete_profile_screen.dart';
import 'package:sex_shopp_aplication/screens/forgot_password/screen/forgot_password_screen.dart';
import 'package:sex_shopp_aplication/screens/home/screen/home_screen.dart';
import 'package:sex_shopp_aplication/screens/product_details/screen/product_detail_screen.dart';
import 'package:sex_shopp_aplication/screens/sign_in/screen/sign_in_screen.dart';
import 'package:sex_shopp_aplication/screens/sign_up/screen/sign_up_screen.dart';
import 'package:sex_shopp_aplication/screens/splash/screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};
