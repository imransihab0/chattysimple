import 'dart:async';
import 'package:chattysimple/screens/login.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();

    // Splash this screen for 2 second
    Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => loginScreen()), // Replace YourNextScreen with the screen you want to navigate to
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/icons/splash.png"),
                height: h * 1,
                width: w * 0.9,
              ),
            ],
          ),
        ),
      ),
    );
  }
}