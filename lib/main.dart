import 'package:flutter/material.dart';
import 'package:flutter/services.dart';//import this packege to hide or transparent the top bar
import 'package:login_ui_firebase/welcome_screen.dart';

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
        body: WelcomePage()
    );
  }
}