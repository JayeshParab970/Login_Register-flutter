import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();

}

class _PasswordState extends State<Password> {
  bool hide=true;
  TextEditingController password=TextEditingController();
  TextEditingController confirmPassword=TextEditingController();
  @override
  Widget build(BuildContext context)
  {
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
            body: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 35, top: 60),
                    child: Text('Change Password',
                      style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                      child: Container(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.40,
                              right: 35,
                              left: 35),
                          child: Column(
                              children: [
                                TextField(
                                  controller: password,
                          obscureText: hide,
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      hintText: 'New Password',
                                      prefixIcon: Icon(Icons.password, color: Colors.lightBlueAccent),
                              suffixIcon:IconButton(onPressed:(){setState(() {
                                hide= !hide;
                              });

                              },icon:hide? Icon(Icons.visibility_off):Icon(Icons.visibility),),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              10))),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TextField(
                                  controller: confirmPassword,
                                obscureText: hide,
                                    decoration: InputDecoration(
                                        fillColor: Colors.grey.shade100,
                                        hintText: 'Confirm Password',
                                        prefixIcon: Icon(Icons.password, color: Colors.lightBlueAccent),
                                        suffixIcon:IconButton(onPressed:(){setState(() {
                                          hide= !hide;
                                        });

                                        },icon:hide? Icon(Icons.visibility_off):Icon(Icons.visibility),),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                10)))
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children:[
                                    CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Color(0xff4c505b),
                                        child: IconButton(
                                          color:Colors.white,
                                            icon: Icon(Icons.arrow_forward),
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, 'login');
                                            if (password.text !=
                                                confirmPassword.text) {
                                              showDialog(context: context,
                                                  builder: (context) {
                                                    return AlertDialog(
                                                      title: Text("Messages"),
                                                      content: Text(
                                                          "Password do not match each other"),
                                                    );
                                                  }
                                              );
                                            }
                                          }
                                        )
                                    )
                                  ],
                                ),
                              ]
                          )
                      )
                  )
                ]
            )
        )
    );
  }
}
