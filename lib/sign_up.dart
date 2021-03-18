import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui_firebase/log_body.dart';
import 'package:login_ui_firebase/log_in.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              //-------------------- Text column start-------------------------
              Column(
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.greenAccent),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'create an account ,its free',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey[700]),
                  )
                ],
              ),
              //-------------------- Text column end--------------------------------
              SizedBox(
                height: 10,
              ),
              //-------------------- input box column start----------------------------
              Column(
                //input boxes
                children: [
                  inputFile(label: 'username'),
                  inputFile(label: 'email'),
                  inputFile(label: 'password', obscureText: true),
                  inputFile(label: 'confirm password', obscureText: true),
                ],
              ),
              //-------------------- input box column end---------------------
              SizedBox(
                height: 20,
              ),
              //----------------------button container start--------------------
              Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                //proivide a circular border radius
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )),

                //material button
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  color: Colors.greenAccent,
                  //provie a round radius shape
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  elevation: 0,
                  //minWidth: double.infinity,

                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    print("sign up ");
                  },
                ),
              ),
              //----------------------button container end--------------------
              SizedBox(
                height: 30,
              ),
              //Create a sub text in a bottom of button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.greenAccent),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
