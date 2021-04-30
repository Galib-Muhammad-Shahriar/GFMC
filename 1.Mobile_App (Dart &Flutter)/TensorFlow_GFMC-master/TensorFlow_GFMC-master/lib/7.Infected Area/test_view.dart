

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final _firestore = Firestore.instance;

class MyAppGoogle extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Infected Area',

      home: MyHomePage(title: 'Infected Area'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  int _counter = 0;
  CameraPosition cameraPosition= CameraPosition(
      target: LatLng(23.822350,90.365417),
       zoom:10 );
  GoogleMapController _controller;

  List<Marker> markersList = List();

  @override
  void initState() {
    super.initState();
    createMarker();

  }

  void createMarker(){
    StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection('location').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.grey[800],
            ),
          );
        }
        final locations = snapshot.data.documents.reversed;
        //List<MessageBubble> messageBubbles = [];
        for (var location in locations) {
          final lat = location.data['lat'];
          final lng = location.data['lng'];


          setState(() {
            markersList.add(Marker(
                position: LatLng(lat,lng),
                markerId: MarkerId(
                    '${lat}-${lng}')));
          });

       //   final currentUser = loggedInUser.email;




        }

      },
    );
  }




  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Infected Area",
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),
        ),
        backgroundColor: Colors.grey[800],
        elevation: 0,),
      body: GoogleMap(
        initialCameraPosition: cameraPosition,
        markers: markersList.toSet(),
        onMapCreated: (controller){
          setState(() {
            _controller=controller;
          });
        },
        onTap: (coordinates){
          _controller.animateCamera(CameraUpdate.newLatLng(coordinates));
          _firestore.collection('location').add({
            'lat': coordinates.latitude,
            'lng': coordinates.longitude,
          });
          markersList.add(Marker(
              position: coordinates,
              markerId: MarkerId(
                  '${coordinates.latitude}-${coordinates.longitude}')));
          setState(() {

          });

        },

      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}