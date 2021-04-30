import 'package:flutter/material.dart';
import 'package:GFMC_Intelligent/Screens/welcome_screen.dart';

import 'Screens/Login/login_screen.dart';

class MenuView extends StatefulWidget {
  @override
  _MenuViewState createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size ;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('-   SERVICES   -',
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),),
      ),
      body: Container(
        color: Colors.grey[600],
        child: Center(



          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text('Breed Identification',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 14.0,horizontal: 16.0),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: (){
                      Navigator.pushNamed(context, '/0.1.Breed Secondary Offline');
                    },
                  ),
                ),

              ),
              SizedBox(
                width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text('Disease Recognition',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 14,horizontal: 16),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: (){
                      Navigator.pushNamed(context, '/0.2.Disease Secondary Offline');
                    },
                  ),
                ),

              ),
              SizedBox(
                width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text('Real-Time Infection Detector',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 14,horizontal: 16),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: (){
                      Navigator.pushNamed(context, '/3.Real-Time Infection Detection');
                    },
                  ),
                ),

              ),
              SizedBox(
                width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text('Cost Calculator',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 14,horizontal: 16),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: (){
                      Navigator.pushNamed(context, '/4.Cost Calculator');
                    },
                  ),
                ),

              ),
//              SizedBox(
//                width: 300.0,
//                child: Padding(
//                  padding: const EdgeInsets.all(4.0),
//                  child: RaisedButton(
//                    elevation: 10.0,
//                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
//                    highlightElevation: 20.0,
//                    hoverColor: Colors.amberAccent,
//                    color: Colors.grey[900],
//                   child: Container(
//                      child: Text('Food Chart',
//                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
//                    ),
//                    textColor: Colors.amberAccent,
//                    highlightColor: Colors.black,
//                    padding: EdgeInsets.symmetric(vertical: 14,horizontal: 16),
//                    disabledTextColor: Colors.black,
//                    disabledColor: Colors.grey,
//                    onPressed: (){
//                      Navigator.pushNamed(context, '/5.Food Chart');
//                    },
//                  ),
//                ),
//
//              ),
//              SizedBox(
//                width: 300.0,
//                child: Padding(
//                  padding: const EdgeInsets.all(4.0),
//                  child: RaisedButton(
//                    elevation: 10.0,
//                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
//                    highlightElevation: 20.0,
//                    hoverColor: Colors.amberAccent,
//                    color: Colors.grey[900],
//                    child: Container(
//                      child: Text('Medicine Suggestion',
//                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
//                    ),
//                    textColor: Colors.amberAccent,
//                    highlightColor: Colors.black,
//                    padding: EdgeInsets.symmetric(vertical: 14,horizontal: 16),
//                    disabledTextColor: Colors.black,
//                    disabledColor: Colors.grey,
//                    onPressed: (){
//                      Navigator.pushNamed(context, '/6.Medicine Suggestion');
//                    },
//                  ),
//                ),
//
//              ),
              SizedBox(
                width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text('Infected Area',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 14,horizontal: 16),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: (){
                      Navigator.pushNamed(context, '/7.1.Area Map');
                    },
                  ),
                ),

              ),
              SizedBox(
                width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text('Farm Controlling',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 14,horizontal: 16),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: (){
                      Navigator.pushNamed(context, LoginScreen.viewName);
                    },
                  ),
                ),

              ),
              SizedBox(
                width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text('Live Chat',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 14,horizontal: 16),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: (){
                      Navigator.pushNamed(context, WelcomeScreen2.id);
                    },
                  ),
                ),

              ),
            ],
          ),


        ),

      ),
    );
  }
}
