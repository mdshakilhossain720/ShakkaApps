import 'package:flutter/material.dart';
import 'package:shakkaapps/utils/colors.dart';
import 'package:shakkaapps/utils/image_path.dart';

import '../../../compment/button.dart';
import '../../dashboard/dashboard.dart';
import '../otp/otp_screen.dart';
import '../sign_up/sign_up.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
             // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Image.asset(ImagePath.userTeacher,height: 200,width: 287,),
                SizedBox(height: 30,),
                Text("Log In",style: TextStyle(fontSize: 45,fontWeight: FontWeight.w600,color: Color(0xff000000)),),
                SizedBox(height: 5,),
                Text("Please enter the detail below to continue",textAlign: TextAlign.center,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff7E7E7E)),),
                SizedBox(height: 20,),
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
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff8600B6),
                          )
                      )
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>OtpScreen()));
                  }, child: Text("Forget password?",style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w600,
                    color: AppColors.buttonColor,
                  ),)),
                ),
                SizedBox(height: 40,),
                ResuableButton(title: 'Log in', ontab: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>DashboardPage()));
                },),

                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have an account?",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xff000000),

                    ),),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUp()));
                      },
                      child: Text(" Sign in",style: TextStyle(
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


