import 'package:flutter/material.dart';
import 'package:flutter_uiapp/components/default_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      child: Column(
        children: [
         const SizedBox(height: 20,),
          Image.asset("assets/images/success.png"),
          const SizedBox(height: 30,),
         const Text("Login Successful!",
         style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.black,
         ),
         ),
         const Spacer(),
          SizedBox(
          height: 40,
          width: 250,
          child: MyDefaultButton(text: "Back to Home", press: (){
            Navigator.pop(context);
          }),
          ),
          const Spacer(),
        ],
        
      ),
    );
  }
}