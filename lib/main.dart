import 'package:flutter/material.dart';
import 'package:flutter/services.dart';//import this packege to hide or transparent the top bar
import 'package:login_ui_firebase/log_in.dart';
import 'package:login_ui_firebase/sign_up.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //----------------our first container [welcome]------------------------
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          width: double.infinity,
          //color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //1 st column for text
              Column(
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'welcome to learnshy extraordinary flutter and coding tutorials. Do Subscribe!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  )
                ],
              ),
              //2nd column for images
              Container(
                height: 220.0,
                width: 220.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('image/welcome.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle),
              ),
              //because of bottom rendering problem so we wrap the column in this widget
              SingleChildScrollView(
                child: Column(
                  children: [
                    //log in button
                    MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        //provide a shape of our button
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(
                              color: Colors.greenAccent,
                            )),
                        //provide a text
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    //sign up button
                    MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        color: Colors.greenAccent,
                        //provide a shape of our button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        //provide a text
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
        //----------------our first container end [welcome]--------------------
      ),
    );
  }
}
