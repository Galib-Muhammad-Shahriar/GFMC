import 'package:flutter/material.dart';
import 'package:GFMC_Intelligent/Screens/Login/components/body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';


class LoginScreen extends StatelessWidget {

  static const viewName =  'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreen3(),
    );
  }
}
