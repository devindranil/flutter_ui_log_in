import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'log_body.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //the app bar of our log in page
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
      //the loginpagebody will be written in the log_body.dart file
      body: LoginPageBody()
    );
  }
}


