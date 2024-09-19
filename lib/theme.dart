import 'package:flutter/material.dart';
import 'package:flutter_uiapp/constant.dart';

ThemeData themeData() {
    return ThemeData(
      fontFamily: "Muli",
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        titleTextStyle: TextStyle(
          color: kTextColor,
          fontSize: 18,
        )
      ),
      scaffoldBackgroundColor: Colors.white,
      textTheme: textTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  TextTheme textTheme() {
    return const TextTheme(
      titleMedium: TextStyle(color: kTextColor),
      bodyMedium: TextStyle(color: kTextColor)
    );
  }

  InputDecorationTheme inputDecorationTheme() {
    const outlineInputBorder = OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: kPrimaryColor,width: 2),
                  gapPadding: 10,
                );
    const outlineInputBorder2 = OutlineInputBorder(
                  gapPadding: 10,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.green,width: 2),
                );
    return const InputDecorationTheme(
         contentPadding: EdgeInsets.symmetric(horizontal: 42,vertical: 20),
         labelStyle: TextStyle(
          color: kPrimaryColor,
         ),
                enabledBorder: outlineInputBorder,
                focusedBorder: outlineInputBorder,
                border: outlineInputBorder
      );
}
