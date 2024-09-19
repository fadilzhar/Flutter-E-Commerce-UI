import 'package:flutter/material.dart';
import 'package:flutter_uiapp/routes.dart';
import 'package:flutter_uiapp/screens/splash/splash_screen.dart';
import 'package:flutter_uiapp/theme.dart';

void main(){
 runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const  MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: themeData(),
        initialRoute: SplashScreen.routeName,
        routes: routes,
        debugShowCheckedModeBanner: false,
    );
  }
}