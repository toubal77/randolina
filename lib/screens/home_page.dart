import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  String? index;
  HomePage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x00e5e5e5),
      body: Center(
        child: Text(
          'Home Page ${index!}',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
