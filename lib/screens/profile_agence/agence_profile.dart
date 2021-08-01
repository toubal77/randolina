import 'package:flutter/material.dart';
import 'package:randolina/screens/profile_agence/header.dart';

class AgenceProfile extends StatelessWidget {
  final List _events = [
    {
      'image': 'assets/images/Rectangle 5.png',
      'nom': 'Montagne tikajda',
      'date': '14 juil',
      'price': '1200 DA',
    },
    {
      'image': 'assets/images/Rectangle 5 1.png',
      'nom': 'Plage sauvage',
      'date': '14 juil',
      'price': '1200 DA',
    },
    {
      'image': 'assets/images/Rectangle 5 2.png',
      'nom': 'Kayak adventure',
      'date': '22 juil',
      'price': '3200 DA',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFFE5E5E5),
        child: Column(
          children: [
            HeaderAgence(),
            SizedBox(
              height: 255,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: _events.length,
                itemBuilder: (contex, index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 4, left: 23),
                    height: 235,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'recent events ...',
                            style: TextStyle(
                              // fontFamily: 'Lato-Black',
                              color: Color.fromRGBO(0, 0, 0, 0.58),
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Banner(
                          location: BannerLocation.topEnd,
                          message: _events[index]['price'].toString(),
                          color: Colors.red.withOpacity(0.6),
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12.0,
                            letterSpacing: 1.0,
                          ),
                          textDirection: TextDirection.ltr,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                width: 315,
                                height: 220,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      _events[index]['image'].toString(),
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                child: Text(
                                  _events[index]['nom'].toString(),
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: -0.33,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Positioned(
                                top: 17,
                                left: 10,
                                child:
                                    // Container(
                                    // width: 53,
                                    // height: 35,
                                    // decoration: BoxDecoration(
                                    //   color: Colors.white.withOpacity(0.65),
                                    //   borderRadius: BorderRadius.circular(30),
                                    //   border: Border.all(
                                    //     width: 0.5,
                                    //     color:
                                    //         Color.fromRGBO(255, 255, 255, 0.58),
                                    //   ),
                                    //   boxShadow: [
                                    //     BoxShadow(
                                    //       blurRadius: 4,
                                    //       offset: Offset(0, 7),
                                    //     ),
                                    //   ],
                                    // ),
                                    //child:
                                    Text(
                                  _events[index]['date'].toString(),
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: -0.33,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              //   ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
