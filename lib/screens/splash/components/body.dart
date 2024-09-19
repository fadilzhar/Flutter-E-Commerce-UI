import 'package:flutter/material.dart';
import 'package:flutter_uiapp/components/default_button.dart';
import 'package:flutter_uiapp/constant.dart';
import 'package:flutter_uiapp/model/splash_data.dart';
import 'package:flutter_uiapp/screens/splash/components/splash_content.dart';
import 'package:flutter_uiapp/screens/sign_in/sign_in_screen.dart';



class Body extends StatefulWidget {
  const Body({
    super.key
  });

  @override
  State < Body > createState() => _BodyState();
}

class _BodyState extends State < Body > {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(flex: 3, child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage= value;
                });
                
              },
              itemCount: splashData.length,
              itemBuilder: (context, index)=> SplashContent(
                text: splashData[index]["text"]!, 
                image: splashData[index]["image"]!
                ),
            )),
         Expanded(
              flex: 2,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 30,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:List.generate(splashData.length,
                      (index) =>  dotBuilder(index : index)
                      )   
                    ),
                   const Spacer(
                      flex: 3,
                    ),
                    MyDefaultButton(text: "Continue",
                    press: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },),
                    const SizedBox(
                      height: 12,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer dotBuilder({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
                  height: 6,
                  width: currentPage == index ? 20 : 6,
                  decoration: BoxDecoration(
                    color: currentPage == index? kPrimaryColor : const Color(0xffd8d8d8), borderRadius: BorderRadius.circular(3),
                  ),
                );
  }
}

