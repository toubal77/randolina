import 'package:flutter/material.dart';
import 'package:randolina/screens/profile_agence/widgets/icon_header.dart';
import 'package:randolina/screens/profile_agence/widgets/image_profile.dart';
import 'package:randolina/screens/profile_agence/widgets/name_location.dart';
import 'package:randolina/screens/profile_agence/widgets/num_follower.dart';

class HeaderAgence extends StatelessWidget {
  const HeaderAgence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: 215,
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF334D73).withOpacity(0.30),
                blurRadius: 4,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NameLocationClub(),
                    IconHeader(),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 142),
                width: 265,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 75.57,
                              height: 32,
                              padding: const EdgeInsets.only(
                                  top: 2, bottom: 2, left: 4, right: 4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.black.withOpacity(0.10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(51, 77, 115, 0.42),
                                    blurRadius: 4,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'Bivouac',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: 'Lato-Black',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color.fromRGBO(0, 0, 0, 0.54),
                                      letterSpacing: 1.166,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 75.57,
                              height: 32,
                              padding: const EdgeInsets.only(
                                  top: 2, bottom: 2, left: 4, right: 4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.black.withOpacity(0.10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(51, 77, 115, 0.42),
                                    blurRadius: 4,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'Randonne',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: 'Lato-Black',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color.fromRGBO(0, 0, 0, 0.54),
                                      letterSpacing: 1.166,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 75.57,
                              height: 32,
                              padding: const EdgeInsets.only(
                                  top: 2, bottom: 2, left: 4, right: 4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.black.withOpacity(0.10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(51, 77, 115, 0.42),
                                    blurRadius: 4,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'Adventure',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: 'Lato-Black',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color.fromRGBO(0, 0, 0, 0.54),
                                      letterSpacing: 1.166,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 75.57,
                              height: 32,
                              padding: const EdgeInsets.only(
                                  top: 2, bottom: 2, left: 4, right: 4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.black.withOpacity(0.10),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(51, 77, 115, 0.42),
                                    blurRadius: 4,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'Kayak',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: 'Lato-Black',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color.fromRGBO(0, 0, 0, 0.54),
                                      letterSpacing: 1.166,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 44,
                      height: 44,
                      margin: const EdgeInsets.only(top: 16, right: 22),
                      decoration: BoxDecoration(
                        color: Color(0xFF334D73),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(51, 77, 115, 0.42),
                            blurRadius: 4,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.8),
                        child: Image.asset(
                          'assets/icons/Vector 7.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ImageProfile(),
        NumFollowers(),
      ],
    );
  }
}
