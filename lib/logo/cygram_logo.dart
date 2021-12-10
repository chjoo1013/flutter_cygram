import 'package:flutter/material.dart';

class CygramLogo extends StatelessWidget {
  const CygramLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Cygram',
          style: TextStyle(
            fontSize: 50,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
