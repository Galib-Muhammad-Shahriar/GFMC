// Code is embedded in side pages and services folder
import 'package:GFMC_Intelligent/0.Provider/auth_provider.dart';
import 'package:GFMC_Intelligent/components/reuseable_drawer.dart';
import 'package:flutter/material.dart';
import 'package:GFMC_Intelligent/Screens/welcome_screen.dart';
import 'package:provider/provider.dart';

class MenuViewDonation extends StatefulWidget {
  @override
  _MenuViewDonationState createState() => _MenuViewDonationState();
}

class _MenuViewDonationState extends State<MenuViewDonation> {
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size ;
    return Consumer<AuthProvider>(
        builder: (_, providerData, __)
    => Scaffold(
      drawer: providerData.getUserEmail != null ? ReUseableDrawer(): null ,
      appBar: AppBar(
        centerTitle: true,
        title: Text('DONATION',
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
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text('PayPal',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 16.0),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: (){
                      Navigator.pushNamed(context, '/11.1.Paypal');
                    },
                  ),
                ),

              ),
              SizedBox(
                width: 300.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    highlightElevation: 20.0,
                    hoverColor: Colors.amberAccent,
                    color: Colors.grey[900],
                    child: Container(
                      child: Text('Stripe',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    ),
                    textColor: Colors.amberAccent,
                    highlightColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 16),
                    disabledTextColor: Colors.black,
                    disabledColor: Colors.grey,
                    onPressed: (){
                      Navigator.pushNamed(context, '/11.2.1.StripeHome');
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
