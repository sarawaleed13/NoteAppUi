import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/layouts/Home.dart';
import 'package:noteapp/layouts/addition/AddNotes.dart';
import 'package:noteapp/layouts/log_in.dart';
import 'package:noteapp/layouts/sign_up.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        buttonColor: Colors.yellow,

        textTheme: TextTheme(
            headline6:TextStyle(
              fontSize: 20,
              color: Colors.white,

            )
        ),
      ),

      debugShowCheckedModeBanner: false,
      home: LogIn(),
      routes:{
        "login":(context)=>LogIn(),
        "SignUp":(context)=>Sign_Up(),
        "Home":(context)=>HomePage(),
        "AddNote":(context)=>AddNotes(),
      } ,
    );
  }
}
