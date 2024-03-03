import 'package:flutter/material.dart';
import 'package:flutter_application_1/todo_app/data/shared_helper.dart';
import 'package:flutter_application_1/auth/view/sign_in.dart';
import 'package:flutter_application_1/todo_app/cubit/tasks_cubit.dart';
import 'package:flutter_application_1/todo_app/cubit/tasks_states.dart';
import 'package:flutter_application_1/todo_app/view/screens/todo_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/////---------------//////


import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...




void main() async {
   WidgetsFlutterBinding.ensureInitialized();

await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  await SharedHelper.init();
      //ternary operator
  Widget myHome = SharedHelper.read('email') != null ? const TodoScreen() : SignIn();
  runApp(
    BlocProvider(
      // .. Cascaded operator
      create: (context) => TasksCubit(InitialState())..initCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: myHome)),
  );
}