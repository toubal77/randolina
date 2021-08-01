import 'package:flutter/material.dart';

class AgenceProfile extends StatelessWidget {
  const AgenceProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFFE5E5E5),
        child: Column(
          children: [
            Stack(
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
                            Container(
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
                            ),
                            Container(
                              width: 110,
                              margin:
                                  const EdgeInsets.only(right: 26, bottom: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/icons/menu.png',
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Image.asset(
                                      'assets/icons/search icon.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: Image.asset(
                                      'assets/icons/bookmark.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
                                            color: Color.fromRGBO(
                                                51, 77, 115, 0.42),
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
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.54),
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
                                            color: Color.fromRGBO(
                                                51, 77, 115, 0.42),
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
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.54),
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
                                            color: Color.fromRGBO(
                                                51, 77, 115, 0.42),
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
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.54),
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
                                            color: Color.fromRGBO(
                                                51, 77, 115, 0.42),
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
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.54),
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
                Positioned(
                  left: 110,
                  bottom: 0,
                  child: Container(
                    width: 103,
                    height: 26,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Color.fromRGBO(51, 77, 115, 0.38),
                      ),
                      borderRadius: BorderRadius.circular(11),
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
                        padding: const EdgeInsets.all(2),
                        child: Text(
                          '243 Followers',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Lato-Black',
                            fontWeight: FontWeight.w800,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 18,
                  bottom: 5,
                  child: Stack(
                    children: [
                      Container(
                        width: 105,
                        height: 105,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 5,
                            color: Color(0xFFE5E5E5),
                          ),
                          borderRadius: BorderRadius.circular(70),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              offset: Offset(1, 3),
                              color: Color(0xFF334D73).withOpacity(0.20),
                            ),
                          ],
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/Rectangle 4.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
