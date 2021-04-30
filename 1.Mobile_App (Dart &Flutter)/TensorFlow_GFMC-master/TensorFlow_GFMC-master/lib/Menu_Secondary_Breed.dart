import 'package:GFMC_Intelligent/components/reuseable_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '0.Provider/auth_provider.dart';

class MenuSecondaryBreedView extends StatefulWidget {
  @override
  _MenuSecondaryBreedViewState createState() => _MenuSecondaryBreedViewState();
}

class _MenuSecondaryBreedViewState extends State<MenuSecondaryBreedView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
        builder: (_, providerData, __)
        => Scaffold(
          drawerEdgeDragWidth: 5,
          drawer: ReUseableDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Breed Identification',
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
                  width: 320.0,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                      highlightElevation: 20.0,
                      hoverColor: Colors.amberAccent,
                      color: Colors.grey[900],
                      child: Container(
                        child: Text('Hen-Breed Identification',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      ),
                      textColor: Colors.amberAccent,
                      highlightColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),
                      disabledTextColor: Colors.black,
                      disabledColor: Colors.grey,
                      onPressed: (){
                        Navigator.pushNamed(context, '/1.Breed_Identification_Hen');
                      },
                    ),
                  ),

                ),
                SizedBox(
                  width: 320.0,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                      highlightElevation: 20.0,
                      hoverColor: Colors.amberAccent,
                      color: Colors.grey[900],
                      child: Container(
                        child: Text('Duck-Breed Identification',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      ),
                      textColor: Colors.amberAccent,
                      highlightColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
                      disabledTextColor: Colors.black,
                      disabledColor: Colors.grey,
                      onPressed: (){
                        Navigator.pushNamed(context, '/1.Breed_Identification_Duck');
                      },
                    ),
                  ),

                ),
                SizedBox(
                  width: 320.0,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                      highlightElevation: 20.0,
                      hoverColor: Colors.amberAccent,
                      color: Colors.grey[900],
                      child: Container(
                        child: Text('Turkey-Breed Identification',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      ),
                      textColor: Colors.amberAccent,
                      highlightColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
                      disabledTextColor: Colors.black,
                      disabledColor: Colors.grey,
                      onPressed: (){
                        Navigator.pushNamed(context, '/1.Breed_Identification_Turkey');
                      },
                    ),
                  ),

                ),

              ],
            ),


          ),

        ),
      ),
    );
  }
}
