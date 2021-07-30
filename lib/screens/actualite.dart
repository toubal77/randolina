import 'package:flutter/material.dart';

class Actualits extends StatelessWidget {
  List _store = [
    {
      'image': 'assets/images/évent 1.png',
      'nom': 'Aventure oran',
    },
    {
      'image': 'assets/images/évent 2.png',
      'nom': 'AlphaRando',
    },
    {
      'image': 'assets/images/évent 3.png',
      'nom': 'Orandonlina',
    },
    {
      'image': 'assets/images/évent 4.png',
      'nom': 'Oran Travel',
    },
    {
      'image': 'assets/images/évent5.png',
      'nom': 'Fox je sais pas',
    },
    {
      'image': 'assets/images/évent 1.png',
      'nom': 'Aventure oran',
    },
    {
      'image': 'assets/images/évent 2.png',
      'nom': 'AlphaRando',
    }
  ];
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
            Container(
              padding: const EdgeInsets.only(top: 9.0, left: 21.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'recent stories ...',
                style: TextStyle(
                  fontFamily: 'Lato-Light',
                  color: Color.fromRGBO(0, 0, 0, 0.58),
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              height: 102,
              padding: const EdgeInsets.only(top: 10, left: 11),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: _store.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          height: 64,
                          width: 64,
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(37),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF334D73),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Container(
                            child: Image.asset(_store[index]['image']),
                          ),
                        ),
                        Container(
                          height: 18,
                          width: 53,
                          child: Flexible(
                            child: Text(
                              _store[index]['nom'],
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
