import 'package:flutter/material.dart';
import 'package:flutter_uiapp/components/custom_suffix.dart';
import 'package:flutter_uiapp/components/default_button.dart';
import 'package:flutter_uiapp/components/error_form.dart';
import 'package:flutter_uiapp/constant.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
 final _formKey = GlobalKey<FormState>();
  String? email;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: _formKey,
      child: 
      Column(
        children: [
          emailFormField(),
          ErrorForm(errors: errors,),
          const SizedBox(
            height: 20,
          ),
          MyDefaultButton(text: "Reset Password", press: (){
            if(_formKey.currentState!.validate()){
              _formKey.currentState!.save();
            } 
          })
        ],
        )
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