import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Components/textfield.dart';
import '../Constant.dart' as constant;
import 'package:firebase_auth/firebase_auth.dart';

import 'MainScreen.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {

  late String email,Password;
  int myvar = 0;

  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    return Scaffold(
      backgroundColor: constant.textPrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Container()),
          Expanded(child: Container()),
        Image.network('https://ck12live.s3.ap-south-1.amazonaws.com/user/5f688627ac992228651c21b1/classroom/original/1607234971537-login.png'),

      password(text: 'Email', isPassword: false, onChanged:(value){
        email = value;
      }
      ),
          password(text: 'Password', isPassword: true, onChanged:(value){
            Password = value;
          }
          ),
          Expanded(child: Container()),
      ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          width: 100,
          height: 60,
          color: constant.emailPrimary,
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  width: 2,
                  color: constant.emailPrimary,
                )

              )
            ),
              onPressed: () async {
              try {
                final newUser =
                  await _auth.signInWithEmailAndPassword(
                  email: email, password: Password);

                if (newUser.user != null && myvar != 0) {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => MainScreen()));
                }
              }
              catch (e){
                debugPrint('$e');
              }
              //}
                //)

              },



              child: Text(
            'login',
            style: TextStyle(
              fontSize: 30.0,
              color: constant.textPrimary,

          ),
          )
          ),
        ),
      ),
      Expanded(child: Container()),
          Expanded(child: Container())



        ],

      )
    );
  }
  
}

