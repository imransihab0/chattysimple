import 'package:flutter/material.dart';

class profileScreen extends StatefulWidget {
  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: NetworkImage("https://imransihab.files.wordpress.com/2023/02/screenshot-2023-02-23-at-20-29-11-imran-sihab-40imransihab-e280a2-instagram-photos-and-videos.png"),
              height: h*.8, width: w*.8,),
          ],
        ),
      ),
    );
  }
}