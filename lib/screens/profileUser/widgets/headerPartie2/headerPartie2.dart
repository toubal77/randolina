import 'package:flutter/material.dart';

class HeaderPartie2 extends StatelessWidget {
  const HeaderPartie2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: const EdgeInsets.only(left: 60),
      padding: const EdgeInsets.only(top: 15, left: 60, right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(37),
          bottomRight: Radius.circular(37),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF334D73).withOpacity(0.20),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        'Etudiant L3 Chimie GPManipulateur en imagerie medicale Like :  Sport , Musique.',
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Lato-Light',
          color: Colors.black.withOpacity(0.87),
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
