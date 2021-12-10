import 'package:flutter/material.dart';
import 'package:flutter_cygram/login/Methods.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => logOut(context),
          child: Text(
            "Logout",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
