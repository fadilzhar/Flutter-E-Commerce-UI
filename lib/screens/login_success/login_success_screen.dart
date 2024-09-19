import 'package:flutter/material.dart';
import 'package:flutter_uiapp/screens/login_success/components/body.dart';


class LoginSuccessScreen extends StatelessWidget {
  static String routeName = '/login_success';
  const LoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Success'),
        centerTitle: true,
        leading: const SizedBox(),
      ),
      body: const Body(),
    );
  }
}