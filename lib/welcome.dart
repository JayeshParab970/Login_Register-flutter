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
            backgroundColor: Colors.transparent,
            body: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 35, top: 130),
                    child: Text('Welcome\nBack',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  )
                ]
            )
        )
    );
  }
}
