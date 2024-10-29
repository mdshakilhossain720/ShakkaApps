import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shakkaapps/compment/button.dart';
import 'package:shakkaapps/utils/image_path.dart';

import '../Fews_steps/fews_steps.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
            Text("OTP verification",style: TextStyle(fontSize: 29,fontWeight: FontWeight.w600,color: Color(0xff000000)),),
            SizedBox(height: 20,),
            PinCodeTextField(
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 65,
                fieldWidth: 66,
                activeFillColor: Colors.white,
                activeColor: Color(0xff8600B6),
                
              ),
              animationDuration: Duration(milliseconds: 300),

             // enableActiveFill: true,


              appContext: context,
            ),
            SizedBox(height: 50,),
            ResuableButton(title: 'Continue', ontab:(){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>FewestScreen()));
            }),


          ],
        ),
      ),

    );
  }
}
