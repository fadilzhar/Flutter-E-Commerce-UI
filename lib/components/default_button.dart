import 'package:flutter/material.dart';
import 'package:flutter_uiapp/constant.dart';


class MyDefaultButton extends StatelessWidget {
  const MyDefaultButton({
    super.key,
    required this.text,
    required this.press,
  });

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
    style: ElevatedButton.styleFrom(
      backgroundColor: kPrimaryColor,
      minimumSize:
       const Size(double.infinity,
      50
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      )
    ),
     child: Text(
      text,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 15,
    ),
    ),
    );
  }
}