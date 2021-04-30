import 'package:flutter/material.dart';

class MenuSecondaryDiseaseOfflineView extends StatefulWidget {
  @override
  _MenuSecondaryDiseaseOfflineViewState createState() => _MenuSecondaryDiseaseOfflineViewState();
}

class _MenuSecondaryDiseaseOfflineViewState extends State<MenuSecondaryDiseaseOfflineView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
