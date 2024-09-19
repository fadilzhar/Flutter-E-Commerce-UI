import 'package:flutter/material.dart';
import 'package:flutter_uiapp/components/custom_suffix.dart';
import 'package:flutter_uiapp/constant.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Complete Profile",
              style: headingStyle,),
             const Text("Complete your profile data",
              textAlign: TextAlign.center,),
              const SizedBox(height: 20),
            ],
          ),
        ),
        ),
    );
  }
}


class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  String? firstName;
  String? lastName;
  String? address;

  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      key: _formKey,
      children: [
         TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        
      },
      validator: (value) {
        
      },
      obscureText: true,
      decoration: const InputDecoration(
        labelText: "Password",
        labelStyle: TextStyle(color: kPrimaryColor),
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffix(icon: "assets/icons/Lock.svg")
      ),
    )
      ],
    );
  }
}