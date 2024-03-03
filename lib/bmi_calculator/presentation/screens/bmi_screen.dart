// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';
import 'package:flutter_application_1/bmi_calculator/constants/app_colors.dart';
import 'package:flutter_application_1/bmi_calculator/constants/app_text_styles.dart';
import 'package:flutter_application_1/bmi_calculator/presentation/screens/results_screen.dart';
import 'package:flutter_application_1/bmi_calculator/widgets/app_button.dart';
import 'package:flutter_application_1/bmi_calculator/widgets/custom_container.dart';
import 'package:flutter_application_1/bmi_calculator/widgets/round_button.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

int ageCounter = 20;
int weightCounter = 60;
int heightCounter = 150;
double bmiva = weightCounter / (heightCounter * 0.01);

Icon xy=Icon(
                            Icons.male,
                            size: 100,
                            color: AppColors.whiteColor,
                          );


Icon xx=Icon(
                            Icons.female,
                            size: 100,
                            color: AppColors.whiteColor,
                          );
 

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: AppColors.whiteColor),
        ),
        backgroundColor: AppColors.appBackgroundColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                    child: CustomContainer(
                  content: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        GestureDetector(
                          onTap: () {
setState(() {
 xy= Icon(Icons.male,color: AppColors.appButtonColors, size: 100,);
 xx =Icon(
                            Icons.female,
                            size: 100,
                            color: AppColors.whiteColor,
                          );
});
                          },
                          child: xy,
                        ),
                        Text(
                          'MALE',
                          style: AppTextStyles.labelTextStyle,
                        )
                      ]),
                )),
                Expanded(
                    child: CustomContainer(
                  content: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        GestureDetector(
onTap: () {
  setState(() {
     xx= Icon(Icons.female,color: AppColors.appButtonColors, size: 100,);
     xy=Icon(
                            Icons.male,
                            size: 100,
                            color: AppColors.whiteColor,
                          );


  });
},
                          child: xx 
                          ,
                        ),
                        Text('FEMALE', style: AppTextStyles.labelTextStyle)
                      ]),
                ))
              ],
            ),
          ),
          Expanded(
              child: CustomContainer(
            content:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Hwight',
                style: AppTextStyles.labelTextStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$heightCounter',
                    style: AppTextStyles.numberTextStyle,
                  ),
                  Text(
                    'cm',
                    style: AppTextStyles.labelTextStyle,
                  )
                ],
              ),
              Slider(
                value: heightCounter.toDouble(),
                onChanged: (newvalue) {
                  setState(() {
                    heightCounter = newvalue.toInt();
                  });
                },
                min: 120,
                max: 220,
                thumbColor: AppColors.appButtonColors,
                activeColor: AppColors.appButtonColors,
              )
            ]),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: CustomContainer(
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: AppTextStyles.labelTextStyle,
                      ),
                      Text(
                        '$weightCounter',
                        style: AppTextStyles.numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundButton(
                              bnRadius: 40,
                              bnicon: Icon(
                                Icons.remove,
                                color: AppColors.whiteColor,
                                size: 30,
                              ),
                              buttonFunction: () {
                                setState(() {
                                  if (weightCounter > 0) {
                                    weightCounter--;
                                  }
                                });
                              }),
                          SizedBox(
                            width: 10,
                          ),
                          RoundButton(
                              bnRadius: 40,
                              bnicon: Icon(
                                Icons.add,
                                color: AppColors.whiteColor,
                                size: 40,
                              ),
                              buttonFunction: () {
                                setState(() {
                                  if (weightCounter < 200) {
                                    weightCounter++;
                                  }
                                });
                              })
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: CustomContainer(
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: AppTextStyles.labelTextStyle,
                      ),
                      Text(
                        '$ageCounter',
                        style: AppTextStyles.numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundButton(
                              bnRadius: 40,
                              bnicon: Icon(
                                Icons.remove,
                                color: AppColors.whiteColor,
                                size: 30,
                              ),
                              buttonFunction: () {
                                setState(() {
                                  if (ageCounter > 0) {
                                    ageCounter--;
                                  }
                                });
                              }),
                          SizedBox(
                            width: 10,
                          ),
                          RoundButton(
                              bnRadius: 40,
                              bnicon: Icon(
                                Icons.add,
                                color: AppColors.whiteColor,
                                size: 40,
                              ),
                              buttonFunction: () {
                                setState(() {
                                  if (ageCounter < 130) {
                                    ageCounter++;
                                  }
                                });
                              })
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          AppButton(
            bntitle: 'Calculate',
            buttonFunction: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => ResultsScreen(
                            bmiva: bmiva = weightCounter /
                      ((heightCounter * 0.01) *
                                (heightCounter * 0.01)),
                                
                          ))));
            },
            bnHeight: 50,
          )
        ],
      ),
    );
  }
 
}
