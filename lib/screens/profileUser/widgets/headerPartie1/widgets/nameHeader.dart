import 'package:flutter/material.dart';

class NameHeader extends StatelessWidget {
  const NameHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 100),
      child: Text(
        'Marine Abdou',
        style: TextStyle(
          fontSize: 19,
          fontFamily: 'Lato-Light',
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
