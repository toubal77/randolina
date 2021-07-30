import 'package:flutter/material.dart';

class Actualits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFFE5E5E5),
        child: Column(
          children: [
            Container(
              height: 101,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF000000).withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 1,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 10),
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Image.asset(
                                'assets/icons/akar-icons_search.png'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Image.asset(
                                'assets/icons/Event Club Icone.png'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/icons/RandoLina (13) 1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Image.asset('assets/icons/Vector.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
