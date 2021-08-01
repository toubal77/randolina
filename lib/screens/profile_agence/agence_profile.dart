import 'package:flutter/material.dart';
import 'package:randolina/screens/profile_agence/header.dart';

class AgenceProfile extends StatelessWidget {
  const AgenceProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFFE5E5E5),
        child: Column(
          children: [
            HeaderAgence(),
            Container(
              margin: const EdgeInsets.only(top: 15, left: 23),
              height: 193,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 9.0, left: 27.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'recent events ...',
                      style: TextStyle(
                        // fontFamily: 'Lato-Black',
                        color: Color.fromRGBO(0, 0, 0, 0.58),
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 7),
                    width: 313,
                    height: 163,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Rectangle 5.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
