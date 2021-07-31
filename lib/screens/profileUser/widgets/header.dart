import 'package:flutter/material.dart';
import 'package:randolina/screens/profileUser/widgets/followersHeader.dart';
import 'package:randolina/screens/profileUser/widgets/headerPartie1/headerPartie1.dart';
import 'package:randolina/screens/profileUser/widgets/headerPartie2/headerPartie2.dart';
import 'package:randolina/screens/profileUser/widgets/imageProfile.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 191,
          color: Color(0xFFE5E5E5),
          child: Column(
            children: [
              HeaderPartie1(),
              HeaderPartie2(),
            ],
          ),
        ),
        FollowersHeader(),
        ImageProfileHeader(),
      ],
    );
  }
}
