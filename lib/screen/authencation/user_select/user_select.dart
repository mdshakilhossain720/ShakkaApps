import 'package:flutter/material.dart';
import 'package:shakkaapps/screen/authencation/login/login.dart';
import 'package:shakkaapps/utils/colors.dart';
import 'package:shakkaapps/utils/image_path.dart';

class UserSelect extends StatelessWidget {
  const UserSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 30,),
              Text("You are",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 35,color: Color(0xff000000)),),
              SizedBox(height: 16,),
              Row(
                children: [
                  Container(
                    height: 177,
                    width: 166,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xfff9edf9),
                    ),
                    child: Column(
                      children: [
                        Image.asset(ImagePath.userTeacher,height: 108,width: 123,),
                        SizedBox(height: 12,),
                        Text("Teacher",textAlign: TextAlign.center,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Color(0xff000000)),),

                      ],
                    ),
                  ),
                  SizedBox(width: 10,),

                  Container(
                    height: 177,
                    width: 166,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xfff9edf9),
                    ),child: Column(
                    children: [
                      Image.asset(ImagePath.userImage,height: 108,width: 123,),
                      SizedBox(height: 12,),
                      Text("Student",textAlign: TextAlign.center,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Color(0xff000000)),),

                    ],
                  ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Center(
                child: Container(
                  height: 177,
                  width: 166,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Color(0xfff9edf9),
                  ),child: Column(
                  children: [
                    Image.asset(ImagePath.userSemnier,height: 108,width: 123,),
                    SizedBox(height: 12,),
                    Text("Institute",textAlign: TextAlign.center,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Color(0xff000000)),),
                   
                    

                    
                    
                    
                    
                    
                  ],
                ),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:AppColors.buttonColor,
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: Center(
                    child: Text("Continue",style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.w600,
                      color: Color(0xffFFFFFF),
                    ),),
                  ),
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),

    );
  }
}
