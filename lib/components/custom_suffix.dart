import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CustomSuffix extends StatelessWidget {
  const CustomSuffix({
    super.key,
    required this.icon,
  });

final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.fromLTRB(
        0,
        7,
        7,
        7,
      ),
      child: SvgPicture.asset(icon,
      width: 10,
      ),
    );
  }
}