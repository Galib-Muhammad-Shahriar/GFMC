import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GMap extends StatefulWidget {
  GMap({Key key}) : super(key: key);

  @override
  _GMapState createState() => _GMapState();
}

class _GMapState extends State<GMap> {
  Set<Marker> _markers = HashSet<Marker>();
  // Set<Polygon> _polygons = HashSet<Polygon>();
  // Set<Polyline> _polylines = HashSet<Polyline>();
  Set<Circle> _circles = HashSet<Circle>();
  bool _showMapStyle = false;

  GoogleMapController _mapController;
  BitmapDescriptor _markerIcon;

  @override
  void initState() {
    super.initState();
    _setMarkerIcon();
    // _setPolygons();
    // _setPolylines();
    _setCircles();
  }

  void _setMarkerIcon() async {
    _markerIcon =
        await BitmapDescriptor.fromAssetImage(ImageConfiguration(), 'assets/location.png');
  }

  void _toggleMapStyle() async {
    String style = await DefaultAssetBundle.of(context).loadString('assets/map_style.json');

    if (_showMapStyle) {
      _mapController.setMapStyle(style);
    } else {
      _mapController.setMapStyle(null);
    }
  }

  // void _setPolygons() {
  //   List<LatLng> polygonLatLongs = List<LatLng>();
  //   polygonLatLongs.add(LatLng(23.822350, 90.365417));
  //   polygonLatLongs.add(LatLng(23.8103, 90.4125));
  //   polygonLatLongs.add(LatLng(23.780546, 90.426659));
  //   polygonLatLongs.add(LatLng(23.7805, 90.4267));
  //
  //   _polygons.add(
  //     Polygon(
  //       polygonId: PolygonId("0"),
  //       points: polygonLatLongs,
  //       fillColor: Colors.white,
  //       strokeWidth: 1,
  //     ),
  //   );
  // }
  //
  // void _setPolylines() {
  //   List<LatLng> polylineLatLongs = List<LatLng>();
  //   polylineLatLongs.add(LatLng(23.822350, 90.365417));
  //   polylineLatLongs.add(LatLng(23.8103, 90.4125));
  //   polylineLatLongs.add(LatLng(23.780546, 90.426659));
  //   polylineLatLongs.add(LatLng(23.7805, 90.4267));
  //
  //   _polylines.add(
  //     Polyline(
  //       polylineId: PolylineId("0"),
  //       points: polylineLatLongs,
  //       color: Colors.red,
  //       width: 1,
  //     ),
  //   );
  // }

  void _setCircles() {
    _circles.add(
      Circle(
          circleId: CircleId("0"),
          center: LatLng(23.822350, 90.365417),
          radius: 1000,
          strokeWidth: 2,
          fillColor: Color.fromRGBO(255, 10, 100, .3)),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;

    setState(() {
      _markers.add(
        Marker(
            markerId: MarkerId("0"),
            position: LatLng(23.822350, 90.365417),
            infoWindow: InfoWindow(
              title: "Mirpur",
              snippet: "Bird Flu Affected",
            ),
            icon: _markerIcon),


      );
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Infected Area',
            style: TextStyle(color: Colors.amberAccent, fontSize: 25),),
        backgroundColor: Colors.grey[800],),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: LatLng(23.822350, 90.365417),
              zoom: 13,
            ),
            markers: _markers,
            // polygons: _polygons,
            // polylines: _polylines,
            circles: _circles,
            myLocationEnabled: false,
            myLocationButtonEnabled: false,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
            child: Text("Switch Mode"),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.map),
        onPressed: () {
          setState(() {
            _showMapStyle = !_showMapStyle;
          });

          _toggleMapStyle();
        },
      ),
    );
  }
}
