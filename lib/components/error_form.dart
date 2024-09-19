import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_uiapp/constant.dart';

class ErrorForm extends StatelessWidget {
  const ErrorForm({
    super.key,
    required this.errors});

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(errors.length, (index) => errorText(text: errors[index]))
    );
  }
}

Row errorText({required String text}) {
  return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: 14,
          width: 14,
        ),
       const SizedBox(
        width: 20,
       ),
       Text(
        text,
        style:const  TextStyle(color: kPrimaryColor),
       )
      ],
    );
}