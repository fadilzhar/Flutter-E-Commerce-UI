import 'package:flutter/material.dart';
import 'package:flutter_uiapp/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter_uiapp/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_uiapp/screens/login_success/login_success_screen.dart';
import 'package:flutter_uiapp/screens/sign_up/sign_up_screen.dart';
import 'package:flutter_uiapp/screens/splash/splash_screen.dart';
import 'package:flutter_uiapp/screens/sign_in/sign_in_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPassword.routeName: (context) => const ForgotPassword(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName:  (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
};