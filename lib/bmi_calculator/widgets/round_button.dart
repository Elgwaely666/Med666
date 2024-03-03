import 'package:flutter/material.dart';
import 'package:flutter_application_1/bmi_calculator/constants/app_colors.dart';

class RoundButton extends StatelessWidget {
  final Icon bnicon;
  final void Function()? buttonFunction;
  final double? bnRadius;
  const RoundButton(
      {super.key, required this.bnicon, required this.buttonFunction ,this.bnRadius});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: buttonFunction,
        child: Container(
          
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.roundButtonColorColor,
          ),
          width: bnRadius,
          height: bnRadius,
          child: Center(child: bnicon),
        ));
  }
}
