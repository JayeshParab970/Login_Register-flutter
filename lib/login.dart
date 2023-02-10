import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  bool hide=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'),fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left:35 ,top: 130) ,
              child: Text('Welcome\nBack',
                style: TextStyle(color: Colors.white ,fontSize: 40),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,
                right:35,
                left:35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.email,color: Colors.lightBlueAccent),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: hide,
                        decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        hintText: 'Password',
                            prefixIcon: Icon(Icons.password,color: Colors.lightBlueAccent),
                            suffixIcon:IconButton(onPressed:(){setState(() {
                              hide= !hide;
                            });

                            },icon:hide? Icon(Icons.visibility_off):Icon(Icons.visibility),),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)))
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Text('Sign In',
                          style: TextStyle(
                            color: Color(0xff4c505b),
                              fontSize: 27,fontWeight: FontWeight.w700)
                        ),

                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff4c505b),
                            child: IconButton(
                              color:Colors.white,
                              onPressed: () {Navigator.pushNamed(context, 'welcome');},
                              icon: Icon(Icons.arrow_forward),
                            )
                          )
    ],
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){Navigator.pushNamed(context, 'register');
                        }, child: Text('Sign Up',
                            style:TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                              color: Color(0xff4c505b),
                            ))
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextButton(onPressed: (){Navigator.pushNamed(context, 'password');}, child: Text('Forgot Password',
                            style:TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                              color: Color(0xff4c505b),
                            ))
                        ),

                      ],

                    )
                  ],
                    )
              )
                ),

          ],
        ),
      ),
    );
  }
}
