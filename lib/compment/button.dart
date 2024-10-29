import 'package:flutter/material.dart';

import '../utils/colors.dart';

class ResuableButton extends StatelessWidget {
  const ResuableButton({
    super.key, required this.title, required this.ontab,
  });
  final String title;
  final VoidCallback ontab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontab,
      child: Container(
        height: 60,
        width: 255,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(9),

        ),
        child: Center(child: Text(title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Color(0xffffffff)),)),
      ),
    );
  }
}