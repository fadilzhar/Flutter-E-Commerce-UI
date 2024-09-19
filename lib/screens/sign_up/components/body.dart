import 'package:flutter/material.dart';
import 'package:flutter_uiapp/components/social_media_icon.dart';
import 'package:flutter_uiapp/constant.dart';
import 'package:flutter_uiapp/screens/sign_up/components/sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text("Register Account",
              style: headingStyle),
              const SizedBox(height: 13),
              const Text("Complete your details or continue \n with social media",
              textAlign: TextAlign.center,),
             const SizedBox(height: 1,),
             const SignUpForm(),
             const SizedBox(height: 15,),
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
              const SizedBox(height: 20,),
              const Text("By continuing your confirm that you agree \n with out Terms and Condition",
              textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}
