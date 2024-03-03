

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class AddTask extends StatelessWidget {
  final TextEditingController title;
  final TextEditingController subTitle;
  final TextEditingController datecont;
  
 void Function()? ontap;
   AddTask(
      {super.key,
      required this.subTitle,
      required this.title,
      required this.datecont,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              controller: title,
              decoration: const InputDecoration(hintText: 'Add title'),
            ),const Gap(10),
            TextField(
              controller: subTitle,
              decoration: const InputDecoration(hintText: 'Add subtitle'),
            ), const Gap(10),
            TextField(
              controller: datecont,
              decoration: const InputDecoration(hintText: 'Add datecont '),
            ),
            const Gap(20),
           ElevatedButton(onPressed: ontap, child: const Text ('save',style: TextStyle(fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );
  }
}





