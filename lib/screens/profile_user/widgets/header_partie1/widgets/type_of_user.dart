import 'package:flutter/material.dart';

class TypeOfUser extends StatelessWidget {
  const TypeOfUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Vloger',
      style: TextStyle(
        fontSize: 14,
        color: Color(0xFF40A3DB),
        fontFamily: 'Lato-Light',
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
