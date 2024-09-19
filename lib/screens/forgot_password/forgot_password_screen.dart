import 'package:flutter/material.dart';
import 'package:flutter_uiapp/screens/forgot_password/components/body.dart';


class ForgotPassword extends StatelessWidget {
  static String routeName = '/forgot-password';
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
        centerTitle: true,
      ),
      body:const Body(),
    );
  }
}