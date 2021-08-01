import 'package:flutter/material.dart';
import 'package:randolina/screens/profile_user/widgets/header_partie1/widgets/icon_header.dart';
import 'package:randolina/screens/profile_user/widgets/header_partie1/widgets/name_header.dart';
import 'package:randolina/screens/profile_user/widgets/header_partie1/widgets/pop_menu_header.dart';
import 'package:randolina/screens/profile_user/widgets/header_partie1/widgets/type_of_user.dart';

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
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF334D73).withOpacity(0.20),
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
              children: [
                Row(
                  children: [
                    NameHeader(),
                    PopMenuHeader(),
                  ],
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
