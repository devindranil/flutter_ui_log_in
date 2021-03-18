import 'package:flutter/material.dart';
import 'package:login_ui_firebase/sign_up.dart';

class LoginPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              //we wrap a column to a widget calle dsinglechildscroolview to aolve the bottom render pixel problemn
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'LogIn',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'LogIn To Your Account',
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey.shade700),
                        )
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          inputFile(label: 'Email'),
                          inputFile(label: 'Password', obscureText: true)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          ),
                        ),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          color: Colors.greenAccent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            'Log In',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Dont have an account?'),
                        TextButton(
                          child: Text(
                            'SignUp',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18,color: Colors.greenAccent),
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                          },
                        ),
                      ],
                    ),

                    //Bckground image container

                    Container(
                      padding: EdgeInsets.only(top: 20),
                      height: 300,
                      decoration: BoxDecoration(
                        //color: Colors.blue,
                          image: DecorationImage(
                            image: AssetImage(
                              'image/login.jpg',
                            ),
                            fit: BoxFit.fitHeight,
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//create a custom widget for text field
Widget inputFile({label, obscureText = false}) {
  return Column(

    crossAxisAlignment: CrossAxisAlignment.start,//for insert the label in the start
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black45),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(),
        ),
      ),
      SizedBox(
        height: 10,
      ),
    ],
  );
}
