import 'package:first_project/Password.dart';
import 'package:first_project/login.dart';
import 'package:first_project/register.dart';
import 'package:first_project/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=> MyLogin(),
      'register':(context)=>MyRegister(),
      'welcome':(context)=> WelcomePage(),
      'password':(context)=> Password()
    },
  ));
}

