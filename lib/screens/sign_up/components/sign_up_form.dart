
import 'package:flutter/material.dart';
import 'package:flutter_uiapp/components/custom_suffix.dart';
import 'package:flutter_uiapp/components/default_button.dart';
import 'package:flutter_uiapp/components/error_form.dart';
import 'package:flutter_uiapp/constant.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String? email;
  String? password;
  String? confirmPassword;

  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          emailFormField(),
          const SizedBox(height: 20,),
          passwordFormField(),
          const SizedBox(height: 35,),
          confirmPasswordFormField(),
          const SizedBox(height: 35),
          ErrorForm(errors: errors),
         const SizedBox(height: 7),
          MyDefaultButton(text: "Continue", press: (){
            if (_formKey.currentState!.validate()){
              _formKey.currentState!.save();
          }})
        ],
      ),
    ); 
  }

  TextFormField confirmPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        setState(() {
          password = value;
        });
        if (password == value){
          setState(() {
            errors.remove(kMatchPassError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty){
          return "";
        }else if (value!=password){
          setState(() {
            errors.add(kMatchPassError);
          });
        }
      },
      obscureText: true,
      decoration: const InputDecoration(
        labelText: "Password Confirmation",
        labelStyle: TextStyle(color: kPrimaryColor),
        hintText: "Re-Enter Your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffix(icon: "assets/icons/Lock.svg")
      ),
    );
  }

  TextFormField passwordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
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
