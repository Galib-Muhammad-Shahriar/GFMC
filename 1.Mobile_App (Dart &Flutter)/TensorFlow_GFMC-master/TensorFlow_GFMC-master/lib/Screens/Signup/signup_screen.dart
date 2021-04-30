import 'package:flutter/material.dart';
import 'package:GFMC_Intelligent/Screens/Signup/components/body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class SignUpScreen extends StatelessWidget {
  static const viewName =  'SignUpScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpScreen4(),
    );
  }
}
