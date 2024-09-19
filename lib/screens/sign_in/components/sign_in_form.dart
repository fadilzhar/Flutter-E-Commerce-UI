import 'package:flutter/material.dart';
import 'package:flutter_uiapp/components/custom_suffix.dart';
import 'package:flutter_uiapp/components/default_button.dart';
import 'package:flutter_uiapp/components/error_form.dart';
import 'package:flutter_uiapp/constant.dart';
import 'package:flutter_uiapp/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_uiapp/screens/login_success/login_success_screen.dart';


class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  final List<String> errors = [];
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          emailFormField(),
          const SizedBox(height: 30),
          passwordFormField(),
         const SizedBox(height: 30),
          rememberAndForget(context),
         const SizedBox(height: 20),
          ErrorForm(errors: errors,),
         const SizedBox(height: 20),
          MyDefaultButton(
            text: "Sign In",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }

              if (errors.isEmpty){
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            }
          )
        ],
      )
    );
  }

  Row rememberAndForget(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: remember,
          onChanged: (value) {
            setState(() {
              remember = value!;
            });
          },
          activeColor: kPrimaryColor,
        ),
        const Text("Remember Me"),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ForgotPassword.routeName);
          },
          child: const Text(
            "Forgot Password",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        )
      ],
    );
  }

  TextFormField passwordFormField() {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        }else if(value.length >= 8 && 
        errors.contains(kShortPassError)){
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        }else if(value.length < 8 && 
        (!errors.contains(kPassNullError) && 
        !errors.contains(kShortPassError))){
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
      },
      obscureText: true,
      decoration: const InputDecoration(
        labelText: "Password",
        labelStyle: TextStyle(color: kPrimaryColor),
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffix(icon: "assets/icons/Lock.svg")
      ),
    );
  }

  TextFormField emailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        }else if(emailValidatorRegExp.hasMatch(value) && 
        errors.contains(kInvalidEmailError)){
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty&&!errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        }else if(!emailValidatorRegExp.hasMatch(value) && 
        (!errors.contains(kPassNullError)) && 
        !errors.contains(kInvalidEmailError)){
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: "Email",
        labelStyle: TextStyle(color: kPrimaryColor),
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffix(icon: "assets/icons/Mail.svg")
      ),
    );
  }
}
