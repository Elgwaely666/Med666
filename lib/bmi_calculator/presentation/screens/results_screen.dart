import 'package:flutter/material.dart';
import 'package:flutter_application_1/bmi_calculator/constants/app_colors.dart';
import 'package:flutter_application_1/bmi_calculator/constants/app_text_styles.dart';
import 'package:flutter_application_1/bmi_calculator/presentation/screens/bmi_screen.dart';
import 'package:flutter_application_1/bmi_calculator/widgets/app_button.dart';
import 'package:flutter_application_1/bmi_calculator/widgets/custom_container.dart';

// ignore: must_be_immutable
class ResultsScreen extends StatelessWidget {
  double bmiva2 = bmiva;
  String stat = '';
  String messge = '';

  ResultsScreen({super.key, bmiva});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(color: AppColors.whiteColor),
        ),
        backgroundColor: AppColors.appBackgroundColor,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                'Your Result',
                style: AppTextStyles.numberTextStyle,
              )
            ],
          ),
          Expanded(
            child: CustomContainer(
              content: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    (() {
                      if (bmiva2 <= 18.4) {
                        return stat = 'Underweight';
                      } else if (bmiva2 >= 18.5 && bmiva2 < 25) {
                        return stat = 'Normal';
                      } else {
                        stat = 'Overwieght';
                      }

                      return stat;
                    })(),
                    style: AppTextStyles.labelTextStyle,
                  ),
                  Text(
                    bmiva2.toStringAsFixed(1),
                    style: AppTextStyles.numberTextStyle,softWrap: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        (() {
                          if (bmiva2 <= 18.4) {
                            return messge =
                                'You have a Underweight body , u should eating more';
                          } else if (bmiva2 >= 18.5 && bmiva2 < 25) {
                            return messge =
                                'You have a Normal body weight ,Good job';
                          } else {
                            messge =
                                'You have a Overwieght body, Go to Gym Now!';
                          }

                          return messge;
                        })(),
                        style: AppTextStyles.labelTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          AppButton(
            bntitle: 'RE-CALCULATE',
            buttonFunction: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: ((context) => const BmiScreen())));
            },
            bnHeight: 60,
          ),
        ],
      ),
    );
  }
}
