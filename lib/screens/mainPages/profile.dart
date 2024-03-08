import 'package:chattysimple/widgets/longButton.dart';
import 'package:flutter/material.dart';

import '../../styles/textstyle.dart';

class profileScreen extends StatefulWidget {

  final String name;
  final String email;

  const profileScreen({
    super.key,
    this.name = "Imranul Islam Shihab",
    this.email = "imran.sihab.0@gmail.com",
  });

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/chatbg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: h*.03),
              Text("Profile.", style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                fontFamily: 'DM',
                color: Color(0xff170c4f),
              ),),
              Image(image: NetworkImage("https://media.licdn.com/dms/image/D5603AQHqVvwnTFhwRw/profile-displayphoto-shrink_800_800/0/1703416735818?e=2147483647&v=beta&t=fIURh-i5g9cl5WsSt09DFCKCgZWTjev4cqC3FQyAIU0"),
                height: h*.5, width: w*.5,),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Name: ${widget.name}",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Email: ${widget.email}",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: h * 0.01),
                    Container(
                      width: w*.9,
                      child: longBtn(
                        callBack: (){},
                        imagePath: "assets/icons/logout.png",
                        btnName: "LOG OUT",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}