import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class AuthProvider with ChangeNotifier{

  final _auth = FirebaseAuth.instance;
  String _userEmail = '';
  var _loggedInUser;

  Future<bool> loginUser ({ String email, String password }) async {
    var response = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    _userEmail = response.email;
    getCurrentUser();
    return response.isAnonymous;
  }
  Future<bool> RegisterUser ({ String email, String password }) async {
    var newresponse = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    _userEmail = newresponse.email;
    return newresponse.isAnonymous;
  }

  String get getUserEmail => _userEmail;

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        _loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  bool signOut () {
    _auth.signOut();
    _userEmail = '';
    
    ChangeNotifier();
    return true;
  }



}

