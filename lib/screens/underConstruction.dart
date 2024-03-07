import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class underConstruction extends StatelessWidget {
  const underConstruction({super.key});

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Cooming soon...", style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
              fontFamily: 'MT',
              color: Color(0xff170c4f),
              ),
            ),
            Image(image: AssetImage("assets/images/uc.png")),
          ],
        ),
      ),
    );
  }
}
