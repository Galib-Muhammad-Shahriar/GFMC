import 'package:GFMC_Intelligent/7.Infected Area/gmap.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

//void main() => runApp(MyAppGmap());

// class MyAppGmap extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Infected Area',
//
//       home: MyHomePage(title: 'Infected Area'),
//     );
//   }
// }

class MyAppGmap extends StatefulWidget {
  MyAppGmap({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyAppGmapState createState() => _MyAppGmapState();
}

class _MyAppGmapState extends State<MyAppGmap> {
  @override
  void initState() {
    super.initState();
    _getLocationPermission();
  }

  void _getLocationPermission() async {
    var location = new Location();
    try {
      location.requestPermission();
    } on Exception catch (_) {
      print('There was a problem allowing location access');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Infected Area',
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),),
        backgroundColor: Colors.grey[800],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Tap the button to see the existing result',
                style: TextStyle(fontSize: 42, color: Colors.amberAccent),
              ),
              SizedBox(height: 20),
              Text(
                'User who have marked certain areas as infected should wait for the admin to approve the marked area as infected as it need proof to be allowed and published. Such information should not be published without cross checking.',
                style: TextStyle(fontSize: 20, color: Colors.amberAccent),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.map, color: Colors.black,),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GMap()),
        ),
      ),
    );
  }
}
