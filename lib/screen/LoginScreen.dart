import 'package:flutter/material.dart';
import '../Components/textfield.dart';
import '../Constant.dart' as constant;


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constant.textPrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.network('https://ck12live.s3.ap-south-1.amazonaws.com/user/5f688627ac992228651c21b1/classroom/original/1607234971537-login.png'),

      password(text: 'Email', isPassword: false),
       password(text: 'Password', isPassword: true),
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
                  color: constant.textPrimary,
                )

              )
            ),
              onPressed: (){}, child: Text(
            'login',
            style: TextStyle(
              fontSize: 30.0,
              color: constant.textPrimary,

          ),
          )
          ),
        ),
      ),
      Expanded(child: Container())



        ],

      )
    );
  }
  
}


