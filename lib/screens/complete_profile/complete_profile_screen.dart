import 'package:flutter/material.dart';
import 'package:flutter_uiapp/screens/complete_profile/components/body.dart';


class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_screen";
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Complete Profile"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}