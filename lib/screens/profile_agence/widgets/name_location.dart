import 'package:flutter/material.dart';

class NameLocationClub extends StatelessWidget {
  const NameLocationClub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'O’rando Adventure',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontFamily: 'Lato-Black',
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Club de Randonnée',
            style: TextStyle(
              fontFamily: 'Lato-Black',
              fontSize: 12,
              color: Color(0xFF40A3DB),
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Oran, Algeria',
            style: TextStyle(
              fontFamily: 'Lato-Black',
              fontSize: 9,
              color: Colors.black.withOpacity(0.87),
            ),
          ),
        ],
      ),
    );
  }
}
