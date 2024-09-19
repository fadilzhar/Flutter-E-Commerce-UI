import 'package:flutter/material.dart';
import 'package:flutter_uiapp/constant.dart';
import 'package:flutter_uiapp/screens/forgot_password/components/forgot_password_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Text("Forgot Password",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              ),
                     const SizedBox(height: 12),
               const Text("Please enter your email and we will send \n you a link to return to your account",
              textAlign: TextAlign.center,),
             const  SizedBox(height: 12),
              const ForgotPasswordForm(),
               const SizedBox(height: 12,),
                dontHaveAccountText()
            ],
          ),
        ),
      ),
    );
  }

  Row dontHaveAccountText() {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {},
                    child: const Text("Sign Up", style: TextStyle(
                      color: kPrimaryColor
                    ),),
                  )
                ],
              );
  }
}

