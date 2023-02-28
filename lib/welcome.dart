import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
        child: Scaffold(
            appBar: AppBar(
              title: Text('Back To Login Page'),
              backgroundColor: Colors.transparent,
            ),
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                mainAxisSize:MainAxisSize.min ,
                children: [
                  Container(
                    child: Text('Home',
                      style: TextStyle(color: Colors.indigo, fontSize: 40,fontWeight: FontWeight.w700),
                    ),
                  )
                ]
            )
        )
    ));
  }
}
