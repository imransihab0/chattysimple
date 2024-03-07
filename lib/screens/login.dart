import 'package:chattysimple/styles/textstyle.dart';
import 'package:chattysimple/widgets/longButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: textInputFieldDecoration,
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 3.0),
                ),
              ),
              cursorColor: Colors.black,
            ),
            SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: textInputFieldDecoration,
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 3.0),
                ),
              ),
              cursorColor: Colors.black,
            ),
            const SizedBox(height: 18.0),
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
                    'LOG IN',
                    style: textStyle,
                  ),
                ),
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
              ],
            ),
            SizedBox(height: h * 0.01),
            Text(
              'or login with',
              style: textInputFieldDecoration,
            ),
            SizedBox(height: h * 0.01),
            // for login with google
            longBtn(
              btnName: "LOGIN WITH GOOGLE",
              imagePath: "assets/icons/google.png",
              callBack: () {},
            ),
            SizedBox(height: h * 0.01),
            // for login with facebook
            longBtn(
              btnName: "LOGIN WITH FACEBOOK",
              imagePath: "assets/icons/facebook.png",
              callBack: () {},
            ),
            SizedBox(height: h * 0.03),
            Text("Forgotten password?", style: textInputFieldDecoration),
          ],
        ),
      ),
    );
  }
}
