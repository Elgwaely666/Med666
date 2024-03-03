import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
final String title;
final void Function()? ButtonFunction;
  const AppButton({super.key,required this.title,required this.ButtonFunction });


  @override
  Widget build (BuildContext context) {
    return GestureDetector(
                onTap: () {     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('created'),backgroundColor: Colors.green,),);},
                child: Container(
                  margin: const EdgeInsets.all(10),
                  width: 300,
                  height: 30,
                  color: const Color.fromARGB(255, 12, 80, 228),
                  child:  Text(
                   title ,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  alignment: Alignment.center,
                ));
  }
}