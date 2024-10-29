import 'package:flutter/material.dart';
import 'package:shakkaapps/compment/button.dart';

import '../Pricing/pricing.dart';




class SurveyForm extends StatefulWidget {
  @override
  _SurveyFormState createState() => _SurveyFormState();
}

class _SurveyFormState extends State<SurveyForm> {
  String? selectedStudentRange;
  String? selectedTeacherRange;
  String? selectedHeardFrom;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                'Number of students in your institution',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              optionButtons(['1-50', '50-100', '100-150', '150-200', '200-250', 'More than that'], selectedStudentRange,
                      (value) {
                    setState(() {
                      selectedStudentRange = value;
                    });
                  }),
              SizedBox(height: 24),
              Text(
                'Number of teachers in your institution',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              optionButtons(['1-50', '50-100', '100-150', '150-200', '200-250', 'More than that'], selectedTeacherRange,
                      (value) {
                    setState(() {
                      selectedTeacherRange = value;
                    });
                  }),
              SizedBox(height: 24),
              Text(
                'How did you hear about us',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              optionButtons(['Google', 'Ads', 'Social media', 'From a friend', 'Other'], selectedHeardFrom, (value) {
                setState(() {
                  selectedHeardFrom = value;
                });
              }),
              SizedBox(height: 32),
             Center(child: ResuableButton(title: 'Next', ontab:(){
               Navigator.push(context, MaterialPageRoute(builder: (_)=>PricingScreen()));
             })),
            ],
          ),
        ),
      ),
    );
  }

  Widget optionButtons(List<String> options, String? selectedOption, Function(String) onSelected) {
    return Wrap(
      spacing: 8,
      children: options.map((option) {
        bool isSelected = selectedOption == option;
        return ChoiceChip(
          label: Text(option),
          selected: isSelected,
          onSelected: (selected) {
            if (selected) onSelected(option);
          },
          //avatar: null,
          avatar: isSelected ? Container() : null,
          selectedColor: Colors.purple,
          backgroundColor: Colors.white,
          labelStyle: TextStyle(color: isSelected ? Colors.white : Colors.purple),
          shape: const StadiumBorder(side: BorderSide(color: Colors.purple)),
        );
      }).toList(),
    );
  }
}
