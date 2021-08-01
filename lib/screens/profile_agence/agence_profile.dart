import 'package:flutter/material.dart';
import 'package:randolina/screens/profile_agence/header.dart';

class AgenceProfile extends StatelessWidget {
  const AgenceProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFFE5E5E5),
        child: Column(
          children: [
            HeaderAgence(),
          ],
        ),
      ),
    );
  }
}
