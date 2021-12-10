import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cygram/home/home_page.dart';
import 'package:flutter_cygram/login/login_page.dart';

class Authenticate extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return HomePage();
    } else {
      return LoginPage();
    }
  }
}
