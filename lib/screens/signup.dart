import 'package:chattysimple/screens/login.dart';
import 'package:chattysimple/styles/textstyle.dart';
import 'package:chattysimple/widgets/longButton.dart';
import 'package:chattysimple/widgets/textField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({super.key});

  @override
  State<signupScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<signupScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("CREATE ACCOUNT", style: TextStyle(
                fontFamily: 'DM',
                fontWeight: FontWeight.bold,
                fontSize: 32,
                ),
              ),
              SizedBox(height: h * 0.01),
              CustomTextField(placeHolder: "Full Name", textTimit: 30, isPassword: false),
              SizedBox(height: h * 0.01),
              CustomTextField(placeHolder: "Email", textTimit: 30, isPassword: false),
              SizedBox(height: h * 0.01),
              CustomTextField(placeHolder: "Password", textTimit: 32, isPassword: true),
              SizedBox(height: h * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      fixedSize: Size(w * .45, h * .06),
                    ),
                    child: const Text(
                      'SIGN UP',
                      style: textStyle,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loginScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      fixedSize: Size(w * .45, h * .06),
                    ),
                    child: const Text(
                      'LOG IN',
                      style: textStyle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: h * 0.01),
              Text(
                'or signup with',
                style: textInputFieldDecoration,
              ),
              SizedBox(height: h * 0.01),
              // for login with google
              longBtn(
                btnName: "SIGNUP WITH GOOGLE",
                imagePath: "assets/icons/google.png",
                callBack: () {},
              ),
              SizedBox(height: h * 0.01),
              // for login with facebook
              longBtn(
                btnName: "SIGNUP WITH FACEBOOK",
                imagePath: "assets/icons/facebook.png",
                callBack: () {},
              ),
              SizedBox(height: h * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
