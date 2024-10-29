import 'package:flutter/material.dart';
import 'package:shakkaapps/compment/button.dart';
import 'package:shakkaapps/screen/authencation/login/login.dart';
import 'package:shakkaapps/utils/image_path.dart';

import '../../../utils/colors.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 12),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Image.asset(ImagePath.signUp,height: 110,width: 310,),
                SizedBox(height: 30,),
                Text("Sign in",style: TextStyle(
                  fontSize: 46,fontWeight: FontWeight.w600,
                  color: Color(0xff000000),
                ),),
                Text("Please enter the detail below to continue",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff7E7E7E)),),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Institute name',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff8600B6),
                          )
                      )
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff8600B6),
                          )
                      )
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Phone number',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff8600B6),
                          )
                      )
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff8600B6),
                          )
                      )
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff8600B6),
                          )
                      )
                  ),
                ),
               SizedBox(height: 40,),
                ResuableButton(title: "Sign in ", ontab:(){}),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have account? ",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xff000000),
            
                    ),),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                      },
                      child: Text(" Log in",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: AppColors.buttonColor,
            
                      ),),
                    ),
            
                  ],
                )
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
