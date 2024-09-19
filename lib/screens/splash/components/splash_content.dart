import 'package:flutter/material.dart';
import 'package:flutter_uiapp/constant.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    required this.text,
    required this.image,
  });

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const Text("My Toko",
         style: TextStyle(
          fontSize: 36,
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
        ),
        Text(
           text,
            textAlign: TextAlign.center,
            style: const  TextStyle(
              color: kTextColor,
              fontSize: 14,
            ),
            ),
            const Spacer(
              flex: 2,
            ),
            Image.asset(image,
            height: 265,
            width: 235,
            ),
      ],
    );
  }
}