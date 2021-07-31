import 'package:flutter/material.dart';
import 'package:randolina/screens/profileUser/widgets/followersHeader.dart';
import 'package:randolina/screens/profileUser/widgets/headerPartie1/headerPartie1.dart';
import 'package:randolina/screens/profileUser/widgets/imageProfile.dart';
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
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: ReadMoreText(
                    'Etudiant L3 Chimie GPManipulateur en imagerie medicale Like :  Sport , Musique.',
                    trimLength: isExpand ? 30 : 50,
                    trimLines: 3,
                    trimMode: TrimMode.Length,
                    trimCollapsedText: ' More',
                    trimExpandedText: 'less',
                    callback: (value) {
                      setState(() {
                        isExpand = !value;
                        print(isExpand.toString());
                      });
                    },
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Lato-Light',
                      color: Colors.black.withOpacity(0.87),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        FollowersHeader(isExpand),
        ImageProfileHeader(isExpand),
      ],
    );
  }
}
