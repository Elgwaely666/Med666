import 'package:flutter/material.dart';
import 'package:flutter_application_1/bmi_calculator/constants/app_colors.dart';

class CustomContainer extends StatelessWidget {
  
 final Widget? content; 
  const CustomContainer({super.key,this.content});

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(10),
decoration: BoxDecoration(color: AppColors.activeContainerColor
,
borderRadius: BorderRadius.circular(5)
),

      child: content,
    );
  }
}