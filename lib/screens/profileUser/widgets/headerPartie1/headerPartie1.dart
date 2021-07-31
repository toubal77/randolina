import 'package:flutter/material.dart';
import 'package:randolina/screens/profileUser/widgets/headerPartie1/widgets/iconHeader.dart';
import 'package:randolina/screens/profileUser/widgets/headerPartie1/widgets/nameHeader.dart';
import 'package:randolina/screens/profileUser/widgets/headerPartie1/widgets/popMenuHeader.dart';
import 'package:randolina/screens/profileUser/widgets/headerPartie1/widgets/typeOfUser.dart';

class HeaderPartie1 extends StatelessWidget {
  const HeaderPartie1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(38),
        ),
        border: Border.all(
          color: Colors.black.withOpacity(0.14),
          width: 1,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    children: [
                      NameHeader(),
                      PopMenuHeader(),
                    ],
                  ),
                ),
                TypeOfUser(),
              ],
            ),
          ),
          IconHeader(),
        ],
      ),
    );
  }
}
