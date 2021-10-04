import 'package:campaign/pages/homePage.dart';
import 'package:campaign/themes/constant.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
    );
  }

  Widget getBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/images/welcome_image.png"),
          Column(
            children: [
              Text(
                'Find yourself \noutside...',
                style: appTitle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '"Book unique camping experiences on over 300,300 campaign sites,Rv parks,Public parks and more..',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 13,
                  height: 1.3,
                ),
              ),
            ],
          ),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: primary,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return HomePage();
              }));
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Explore !",
                style: TextStyle(color: textWhite, fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
