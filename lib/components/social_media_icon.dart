import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
    super.key, required this.icon, required this.press,
  });

  final String icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press;
      },
      child: Container(
        padding: EdgeInsets.all(12),
        height: 45,
        width: 45,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: const BoxDecoration(
          color: Color(0xfff5f6f9), 
          shape: BoxShape.circle
        ),
        child: SvgPicture.asset(
          icon,
        ),
      ),
    );
  }
}