import 'package:flutter/material.dart';
import 'package:flutter_uiapp/components/social_media_icon.dart';
import 'package:flutter_uiapp/constant.dart';
import 'package:flutter_uiapp/screens/sign_in/components/sign_in_form.dart';
import 'package:flutter_uiapp/screens/sign_up/sign_up_screen.dart';
import 'package:flutter_uiapp/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
               const Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const Text(
                  "Sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                const SignInForm(),
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaIcon(
                      icon: 'assets/icons/google-icon.svg',
                      press: () {}
                    ),
                    SocialMediaIcon(
                      icon: 'assets/icons/facebook-2.svg',
                      press: () {}
                    ),
                    SocialMediaIcon(
                      icon: 'assets/icons/twitter.svg',
                      press: () {}
                    )
                  ],
                ),
                SizedBox(height: getPropScreenHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SignUpScreen.routeName);
                      },
                      child: const Text("Sign Up", style: TextStyle(
                        color: kPrimaryColor
                      ),),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
