import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:table_booking_app/pages/homescreen.dart';
import 'package:table_booking_app/pages/signup.dart';

import '../reusablewidgets/buttonwidget.dart';
import '../reusablewidgets/logowidget.dart';
import '../reusablewidgets/textfieldwidget.dart';
import 'authentication.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 103, 30, 231),Color.fromARGB(255, 209, 43, 99),],
          begin: Alignment.topCenter,end: Alignment.bottomCenter),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
               logoWidget("asset/logo.jpg"),
               SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter UserName", 
                Icons.person_outline, false,
                    _emailTextController,
                    validator: ((value) {
                                if (value!.isEmpty){
                                return "please enter the email";
                                }
                                return null;
                                })),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController,
                    validator: ((value) {
                                if (value!.isEmpty){
                                return "please enter the password";
                                }
                                return null;
                                })
                                ),
                const SizedBox(
                  height: 5,
                ),
                firebaseUIButton(context, "Sign In", () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                }),
                signUpOption()
                
              ]
            ),
          ),
        ),
      ),
    );
  }
  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70,fontSize: 22)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUp()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(fontSize: 22,color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}