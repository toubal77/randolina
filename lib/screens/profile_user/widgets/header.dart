import 'package:flutter/material.dart';
import 'package:randolina/screens/profile_user/widgets/followers_header.dart';
import 'package:randolina/screens/profile_user/widgets/header_partie1/header_partie1.dart';
import 'package:randolina/screens/profile_user/widgets/image_profile.dart';
import 'package:readmore/readmore.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: isExpand ? 207 : 191,
          color: Color(0xFFE5E5E5),
          child: Column(
            children: [
              HeaderPartie1(),
              Container(
                height: isExpand ? 115 : 87,
                margin: const EdgeInsets.only(left: 60),
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 60,
                  right: 10,
                  bottom: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(37),
                    bottomRight: Radius.circular(37),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF334D73).withOpacity(0.20),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: ReadMoreText(
                    'Etudiant L3 Chimie GPManipulateur en imagerie medicale Like :  Sport , Musique.Etudiant L3 Chimie GPManipulateur en imagerie medicale Like :  Sport , Musique.Etudiant L3 Chimie GPManipulateur en imagerie medicale Like :  Sport , Musique.',
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' More',
                    trimExpandedText: 'less',
                    callback: (value) {
                      setState(() {
                        isExpand = !value;
                        print(isExpand.toString());
                      });
                    },
                    style: TextStyle(
                      fontSize: 11,
                      fontFamily: 'Lato-Black',
                      color: Colors.black.withOpacity(0.87),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        FollowersHeader(isExpand: isExpand),
        ImageProfileHeader(isExpand: isExpand),
      ],
    );
  }
}
