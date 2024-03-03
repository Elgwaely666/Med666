import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: const Color.fromARGB(213, 163, 15, 243),
            onPressed: () {
              // ignore: avoid_print
              print('FBI open the dorr');
            }),
        backgroundColor: const Color.fromARGB(255, 0, 81, 255),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('My App'),
        ),
        body: const Center(
          child: Text('Mr Medhat'),
        ),
      ),
    );
  }
}
