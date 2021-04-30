import 'package:GFMC_Intelligent/Screens/Login/components/body.dart';
import 'package:GFMC_Intelligent/Screens/Login/login_screen.dart';
import 'package:GFMC_Intelligent/Screens/Signup/components/body.dart';
import 'package:GFMC_Intelligent/Screens/Signup/signup_screen.dart';
import 'package:flutter/material.dart';


import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:GFMC_Intelligent/components/rounded_button2.dart';

class WelcomeScreen5 extends StatefulWidget {
  static const String id = 'welcome_screen5';

  @override
  _WelcomeScreen5State createState() => _WelcomeScreen5State();
}

class _WelcomeScreen5State extends State<WelcomeScreen5>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "APP_Sign_in",
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),
        ),
        backgroundColor: Colors.grey[800],
        elevation: 0,
      ),
      backgroundColor: Colors.grey[500],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[

                Text("     GFMC",
                style: TextStyle(
                  fontSize: 50, fontWeight: FontWeight.w900,color: Colors.black ),)
              ],
            ),
            Row(

              children: <Widget>[

                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Intelligent'],
                  textStyle: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Log In',
              colour: Colors.grey[800],
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.viewName);
              },
            ),
            RoundedButton(
              title: 'Register',
              colour: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, '/Registration');
              },
            ),
          ],
        ),
      ),
    );
  }
}