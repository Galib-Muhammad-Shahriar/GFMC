import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:camera/camera.dart';
//import 'home.dart';

import 'package:provider/provider.dart';

import '0.Provider/auth_provider.dart';


import 'Start_app.dart';
import 'package:GFMC_Intelligent/Menu.dart';
import 'package:GFMC_Intelligent/Menu_Online.dart';
import 'Menu_Secondary_Breed_Offline.dart';
import 'package:GFMC_Intelligent/Menu_Secondary_Breed.dart';
import 'Menu_Secondary_Disease_Offline.dart';
import 'package:GFMC_Intelligent/Menu_Secondary_Disease.dart';

import 'package:GFMC_Intelligent/1.Breed Identification/tensorflowHen.dart';
import 'package:GFMC_Intelligent/1.Breed Identification/tensorflowDuck.dart';
import 'package:GFMC_Intelligent/1.Breed Identification/tensorflowTurkey.dart';
import 'package:GFMC_Intelligent/2.Disease Recognition/tensorflowHenDisease.dart';
import 'package:GFMC_Intelligent/2.Disease Recognition/tensorflowDuckDisease.dart';
import 'package:GFMC_Intelligent/2.Disease Recognition/tensorflowTurkeyDisease.dart';
import 'package:GFMC_Intelligent/3.Differentiation/RealTime.dart';
import 'package:GFMC_Intelligent/4.Cost Calculator/input_page.dart';
import 'package:GFMC_Intelligent/4.Cost Calculator/Cost-Calculation_Online.dart';
import 'package:GFMC_Intelligent/5.Food Chart/food_chart.dart';
import 'package:GFMC_Intelligent/6.Medicine Suggestion/medicine.dart';
import 'package:GFMC_Intelligent/7.Infected Area/test_view.dart';
import 'package:GFMC_Intelligent/7.Infected Area/main3.dart';
import 'package:GFMC_Intelligent/8.Farm Controlling/Automation_PHP.dart';

import 'package:GFMC_Intelligent/Screens/Welcome/welcome_screen.dart';
import 'package:GFMC_Intelligent/Screens/Login/login_screen.dart';
import 'package:GFMC_Intelligent/Screens/Signup/signup_screen.dart';

import 'Screens/Signup/signup_screen.dart';

import 'package:GFMC_Intelligent/Screens/welcome_screen.dart';
import 'package:GFMC_Intelligent/Screens/login_screen.dart';
import 'package:GFMC_Intelligent/Screens/registration_screen.dart';
import 'package:GFMC_Intelligent/Screens/chat_screen.dart';

import 'package:GFMC_Intelligent/10.Blog/blog_post.dart';
import 'package:GFMC_Intelligent/10.Blog/blog_view.dart';
import 'package:GFMC_Intelligent/11.Donation/paypal.dart';
import 'package:GFMC_Intelligent/11.Donation/stripe.dart';
import 'package:GFMC_Intelligent/11.Donation/pages/home.dart';
import 'package:GFMC_Intelligent/11.Donation/pages/existing-cards.dart';
import 'package:GFMC_Intelligent/11.Donation/services/payment-service.dart';
import 'package:GFMC_Intelligent/13.Statistics/homepage.dart';




import 'package:google_maps_flutter/google_maps_flutter.dart';

//import 'main2.dart';

//List<CameraDescription> cameras;
void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider<AuthProvider>(
        create: (_) => AuthProvider(),
      ),


    ],
    child: MyApp(),
  ),
);

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'GFMC Intellient',
//      home: LoginScreen(),

//    );
//  }
//}

//void main() => runApp(BMICalculator());

//class BMICalculator extends StatelessWidget {
  //@override
  //Widget build(BuildContext context) {
   // return MaterialApp(
    //  theme: ThemeData.dark().copyWith(
     //   primaryColor: Color(0xFF0A0E21),
      //  scaffoldBackgroundColor: Color(0xFF0A0E21),
      //),
      //home: InputPage(),
    //);
  //}
//}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GFMC_ Intelligent ',
      theme: ThemeData(
        primaryColor: Colors.grey[800],
        buttonColor: Colors.amberAccent,
      ),
      initialRoute: //StartView.viewName,
      StartView.viewName,
      routes: {
        StartView.viewName: (context) => StartView(),
        WelcomeScreen.viewName: (context) => WelcomeScreen(),
        LoginScreen.viewName: (context) => LoginScreen(),
        '/Registration': (context) => SignUpScreen(),
        '/0.SERVICES': (context) => MenuView(),
        '/0.0.SERVICES': (context) => MenuOnlineView(),
        '/0.1.Breed Secondary Offline': (context) => MenuSecondaryBreedOfflineView(),
        '/0.1.Breed Secondary': (context) => MenuSecondaryBreedView(),
        '/1.Breed_Identification_Duck': (context) => TensorflowDuck(),
        '/1.Breed_Identification_Hen': (context) => TensorflowHen(),
        '/1.Breed_Identification_Turkey': (context) => TensorflowTurkey(),
        '/0.2.Disease Secondary Offline': (context) => MenuSecondaryDiseaseOfflineView(),
        '/0.2.Disease Secondary': (context) => MenuSecondaryDiseaseView(),
        '/2.Disease_Recognitiontion_Duck': (context) => TensorflowDuckDisease(),
        '/2.Disease_Recognitiontion_Hen': (context) => TensorflowHenDisease(),
        '/2.Disease_Recognitiontion_Turkey': (context) => TensorflowTurkeyDisease(),
        '/3.Real-Time Infection Detection': (context) => TfliteHome(),
        '/4.Cost Calculator': (context) => InputPage(),
        '/4.1.Cost Calculator': (context) => CostCal(),
        '/5.Food Chart': (context) => FoodChart(),
        '/6.Medicine Suggestion': (context) => Medicine(),
        '/7.Area Map': (context) => MyAppGoogle(),
        '/7.1.Area Map': (context) => MyAppGmap(),
        '/8.Farm_Controlling': (context) => Automation(),


        WelcomeScreen2.id: (context) => WelcomeScreen2(),
        LoginScreen2.id: (context) => LoginScreen2(),
        RegistrationScreen2.id: (context) => RegistrationScreen2(),
        ChatScreen2.id: (context) => ChatScreen2(),


        '/10.1.BlogPost': (context) => BlogPost(),
        '/10.2.BlogView': (context) => BlogView(),
        '/11.1.Paypal': (context) => PayPal(),
        '/11.2.0.Donation': (context) => MenuViewDonation(),
        '/11.2.1.StripeHome': (context) => HomePageStripe(),
        '/11.2.2.Stripe_existing-cards': (context) => ExistingCardsPage(),
        '/13.Statistics': (context) => HomePageChart(),

//        '/Real-time Detector': (context) => MyCameraApp(),




      },
    );
  }
}