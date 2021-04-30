import 'package:GFMC_Intelligent/0.Provider/auth_provider.dart';
import 'package:GFMC_Intelligent/Screens/chat_screen.dart';
import 'package:GFMC_Intelligent/components/reuseable_drawer.dart';
import 'package:flutter/material.dart';
import 'package:GFMC_Intelligent/Screens/welcome_screen.dart';

class MenuOnlineView extends StatefulWidget {
  @override
  _MenuOnlineViewState createState() => _MenuOnlineViewState();
}

class _MenuOnlineViewState extends State<MenuOnlineView> {
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      drawerEdgeDragWidth: 5,
      drawer: ReUseableDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '-   SERVICES   -',
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),
        ),
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
                  padding: const EdgeInsets.all(2.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text(
                        'Breed Identification',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: () {
                      Navigator.pushNamed(context, '/0.1.Breed Secondary');
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text(
                        'Disease Recognition',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: () {
                      Navigator.pushNamed(context, '/0.2.Disease Secondary');
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text(
                        'Real-Time Infection Detector',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: () {
                      Navigator.pushNamed(
                          context, '/3.Real-Time Infection Detection');
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text(
                        'Cost Calculator',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: () {
                      Navigator.pushNamed(context, '/4.1.Cost Calculator');
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text(
                        'Food Chart',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: () {
                      Navigator.pushNamed(context, '/5.Food Chart');
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text(
                        'Medicine Suggestion',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: () {
                      Navigator.pushNamed(context, '/6.Medicine Suggestion');
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text(
                        'Infected Area',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: () {
                      Navigator.pushNamed(context, '/7.Area Map');
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text(
                        'Farm Controlling',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: () {
                      Navigator.pushNamed(context, '/8.Farm_Controlling');
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text(
                        'Live Chat',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: () {
                      Navigator.pushNamed(context, ChatScreen2.id);
                      // Navigator.pushNamed(context, WelcomeScreen2.id);
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
