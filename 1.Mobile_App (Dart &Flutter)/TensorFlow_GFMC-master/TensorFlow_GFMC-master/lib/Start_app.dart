import 'package:flutter/material.dart';
import 'package:GFMC_Intelligent/Screens/Login/login_screen.dart';

import 'Screens/Welcome/welcome_screen.dart';

class StartView extends StatefulWidget {

  static const viewName = 'StartView' ;

  @override
  _StartViewState createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  @override
  Widget build(BuildContext context) {



    var mediaquery = MediaQuery.of(context).size ;

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "GFMC Intelligent",
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),
        ),
        backgroundColor: Colors.grey[800],
        elevation: 0,

      ),
      body: Container(

        decoration: new BoxDecoration(
            color: Colors.grey[500],
          image: new DecorationImage(
            image: new AssetImage("assets/icons/poultry.png"),
            fit: BoxFit.cover
          )
        ),


        width: mediaquery.width,
        height: mediaquery.height,
        child:
        Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              color: Colors.amberAccent,
              child:
              Container(

                child: Text("  Login, then continue ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                ,
              ),
              onPressed: () {
              Navigator.pushNamed(context, WelcomeScreen.viewName);
            },),
            RaisedButton(


              color: Colors.amberAccent,
              child:
            Container(
              child: Text("Continue without login",

                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),

              ),

            )
              ,onPressed: () {
              Navigator.pushNamed(context, '/0.SERVICES');
            },)
          ],
        ),
      ),
    );
  }
}
