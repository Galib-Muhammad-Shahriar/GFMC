import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '0.Provider/auth_provider.dart';
import 'components/reuseable_drawer.dart';

class MenuSecondaryDiseaseView extends StatefulWidget {
  @override
  _MenuSecondaryDiseaseViewState createState() => _MenuSecondaryDiseaseViewState();
}

class _MenuSecondaryDiseaseViewState extends State<MenuSecondaryDiseaseView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
        builder: (_, providerData, __)
    => Scaffold(
      drawerEdgeDragWidth: 5,
      drawer: ReUseableDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Disease Recognition',
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
                      child: Text('Hen-Disease Recognition',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: (){
                      Navigator.pushNamed(context, '/2.Disease_Recognitiontion_Hen');
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
                      child: Text('Duck-Disease Recognition',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: (){
                      Navigator.pushNamed(context, '/2.Disease_Recognitiontion_Duck');
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
                      child: Text('Turkey-Disease Recognition',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: (){
                      Navigator.pushNamed(context, '/2.Disease_Recognitiontion_Turkey');
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
