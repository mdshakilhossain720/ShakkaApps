import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shakkaapps/utils/colors.dart';
import 'package:shakkaapps/utils/image_path.dart';

import '../authencation/onBoarding/slider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>Onboarding()
            )
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        //stops: [0.1, 0.5, 0.7, 0.9],
        colors: [
       AppColors.splashColor,
          AppColors.shlash2Color,
        ],
    ),
    ),
        child: Center(child: Image.asset(ImagePath.spalshImage)),


      ),


    );
  }
}
