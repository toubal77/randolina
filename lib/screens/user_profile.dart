import 'package:flutter/material.dart';

enum FilterOptions {
  EditProfile,
  SingOut,
}

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  late bool showPopMenu;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFFE5E5E5),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 191,
                  color: Color(0xFFE5E5E5),
                  child: Column(
                    children: [
                      Container(
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
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 100),
                                          child: Text(
                                            'Marine Abdou',
                                            style: TextStyle(
                                              fontSize: 19,
                                              fontFamily: 'Lato-Light',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        PopupMenuButton(
                                          shape: OutlineInputBorder(
                                              borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          )),
                                          onSelected:
                                              (FilterOptions selectedValue) {
                                            setState(() {
                                              if (selectedValue ==
                                                  FilterOptions.EditProfile) {
                                                showPopMenu = true;
                                              } else {
                                                showPopMenu = false;
                                              }
                                              if (selectedValue ==
                                                  FilterOptions.SingOut) {
                                                showPopMenu = true;
                                              } else {
                                                showPopMenu = false;
                                              }
                                            });
                                          },
                                          icon: Container(
                                            width: 13,
                                            child: Image.asset(
                                              'assets/icons/Vector 6.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          itemBuilder: (_) => [
                                            PopupMenuItem(
                                              child: Container(
                                                child: Text(
                                                  'Edit profil',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'Lato-Light',
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              value: FilterOptions.EditProfile,
                                            ),
                                            PopupMenuItem(
                                              child: Container(
                                                child: Text(
                                                  'Sign out',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w800,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              value: FilterOptions.SingOut,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Vloger',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF40A3DB),
                                      fontFamily: 'Lato-Light',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 24,
                                    width: 24,
                                    child: Image.asset(
                                      'assets/icons/search icon.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
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
                        height: 87,
                        margin: const EdgeInsets.only(left: 60),
                        padding:
                            const EdgeInsets.only(top: 15, left: 60, right: 10),
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
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 30,
                  bottom: 10,
                  child: Container(
                    width: 110,
                    height: 26,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(
                        width: 1,
                        style: BorderStyle.solid,
                        color: Color.fromRGBO(51, 77, 115, 0.38),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF334D73).withOpacity(0.42),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        '243 Followers',
                        style: TextStyle(
                          fontFamily: 'Lato-Light',
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 42,
                  left: 16,
                  child: Container(
                    width: 95,
                    height: 95,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(47),
                      border: Border.all(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.black,
                      ),
                      // la bordeur de l'image avec le blue c'est dans l'image
                      // non la cause de boxShadow
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF334D73).withOpacity(0.43),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/images/circle.png',
                      fit: BoxFit.cover,
                    ),
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
