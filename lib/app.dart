import 'package:flutter/material.dart';

import 'screen/splash_screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),

      debugShowCheckedModeBanner: false,
      home: SplashScreen(),


    );
  }
}
