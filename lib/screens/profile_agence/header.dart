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
          margin: const EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 118,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NameLocationClub(),
                    IconHeader(),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 137),
                width: 265,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 70.57,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(11),
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
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color.fromRGBO(0, 0, 0, 0.54),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 70.57,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(11),
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
                                    'Rando',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: 'Lato-Black',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color.fromRGBO(0, 0, 0, 0.54),
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
                              width: 70.57,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(11),
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
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color.fromRGBO(0, 0, 0, 0.54),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 70.57,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(11),
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
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color.fromRGBO(0, 0, 0, 0.54),
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
                      width: 45,
                      height: 45,
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
