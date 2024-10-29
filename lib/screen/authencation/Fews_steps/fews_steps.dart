import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shakkaapps/compment/button.dart';
import 'package:shakkaapps/utils/image_path.dart';

import '../../aqquistion/aqquistion_screen.dart';

class FewestScreen extends StatelessWidget {
  const FewestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImagePath.Otp),
            SizedBox(height: 20,),
            Text("A Few more steps left",style: TextStyle(fontSize: 29,fontWeight: FontWeight.w600,color: Color(0xff000000)),),
          SizedBox(height: 20,),
            Text("We need some more information of your to continue",textAlign: TextAlign.center,style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.w600,
              color: Color(0xff5C5C5C),
            ),),
            SizedBox(height: 50,),
            ResuableButton(title: 'Continue', ontab:(){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>SurveyForm()));
            }),


          ],
        ),
      ),

    );
  }
}
