import 'package:flutter/material.dart';
import 'package:randolina/screens/profileUser/widgets/header.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFFE5E5E5),
        child: Column(
          children: [
            Header(),
          ],
        ),
      ),
    );
  }
}
