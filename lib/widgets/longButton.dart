import 'package:flutter/material.dart';
import '../styles/textstyle.dart';

class longBtn extends StatelessWidget {
  final String? btnName;
  final String? imagePath;
  final VoidCallback? callBack;

  const longBtn({
    super.key,
    this.btnName = "Button Name Here",
    this.imagePath = "assets/icons/google.png",
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: callBack!,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath!, height: h * .03),
            SizedBox(width: w * 0.05),
            Container(
              height: h * .06,
              child: Center(
                child: Text(
                  btnName!,
                  style: textStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
