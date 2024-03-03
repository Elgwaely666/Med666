
import 'package:flutter/material.dart';
import 'package:flutter_application_1/bmi_calculator/constants/app_colors.dart';
import 'package:flutter_application_1/bmi_calculator/constants/app_text_styles.dart';

class AppButton extends StatelessWidget {
  final String bntitle;
  final double? bnHeight;
  final void Function()? buttonFunction;
  const AppButton(
      {super.key, required this.bntitle, required this.buttonFunction,this.bnHeight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: buttonFunction,
        child: Container(
          margin: EdgeInsets.all(10),
          height: bnHeight,
          decoration: BoxDecoration(
              color: AppColors.appButtonColors,
              borderRadius: BorderRadius.circular(10)),
          width: double.infinity,
          child:
              Center(child: Text(bntitle, style: AppTextStyles.buttonTextStyle)),
        ));
  }
}
