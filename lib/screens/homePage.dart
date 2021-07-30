import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String? index;
  HomePage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Home Page ' + index!,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
