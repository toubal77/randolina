import 'package:flutter/material.dart';

enum FilterOptions {
  reportthispost,
}

class Actualits extends StatefulWidget {
  @override
  _ActualitsState createState() => _ActualitsState();
}

class _ActualitsState extends State<Actualits> {
  late bool showPopMenu;
  final List _store = [
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

  final List _post = [
    {
      'profile': 'assets/images/évent 1.png',
      'image': 'assets/images/Rectangle 4.png',
      'nom': 'Meriem Abdou',
      'commentaire': '16 of the Best Places to visit in italy'
    },
    {
      'profile': 'assets/images/évent 2.png',
      'image': 'assets/images/Rectangle 4.png',
      'nom': 'Toubal Zine-Eddine',
      'commentaire': '16 of the Best Places to visit in italy'
    },
    {
      'profile': 'assets/images/évent 4.png',
      'image': 'assets/images/Rectangle 4.png',
      'nom': 'Yacine Benali',
      'commentaire': '16 of the Best Places to visit in italy'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
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
                      Row(
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
                      Image.asset(
                        'assets/icons/RandoLina (13) 1.png',
                        fit: BoxFit.cover,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Image.asset(
                          'assets/icons/Vector.png',
                          fit: BoxFit.cover,
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
                    return Column(
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
                                blurRadius: 2,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            _store[index]['image'].toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 18,
                          width: 53,
                          child: Text(
                            _store[index]['nom'].toString(),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _post.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 325,
                    height: 473,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF334D73).withOpacity(0.20),
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.only(top: 20, left: 25, right: 25),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 78,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    margin: const EdgeInsets.only(
                                        top: 10, left: 20),
                                    child: Image.asset(
                                        _post[index]['profile'].toString()),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 16, left: 10),
                                    child: Text(
                                      _post[index]['nom'].toString(),
                                      style: TextStyle(
                                        fontFamily: 'Lato-Light',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              PopupMenuButton(
                                shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                )),
                                onSelected: (FilterOptions selectedValue) {
                                  setState(() {
                                    if (selectedValue ==
                                        FilterOptions.reportthispost) {
                                      showPopMenu = true;
                                    } else {
                                      showPopMenu = false;
                                    }
                                  });
                                },
                                icon: Container(
                                  height: 15,
                                  margin:
                                      const EdgeInsets.only(top: 17, right: 5),
                                  child:
                                      Image.asset('assets/icons/options.png'),
                                ),
                                itemBuilder: (_) => [
                                  PopupMenuItem(
                                    value: FilterOptions.reportthispost,
                                    child: SizedBox(
                                      width: 191,
                                      height: 60,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Divider(
                                            height: 3,
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.25),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Rport this post',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black
                                                      .withOpacity(0.85),
                                                  fontFamily: 'Lato-Light',
                                                ),
                                              ),
                                              SizedBox(
                                                width: 22,
                                                height: 22,
                                                child: Stack(
                                                  children: [
                                                    Image.asset(
                                                      'assets/icons/Vector 4.png',
                                                    ),
                                                    Positioned(
                                                      top: 7,
                                                      left: 7,
                                                      child: SizedBox(
                                                        width: 5,
                                                        height: 5,
                                                        child: Image.asset(
                                                          'assets/icons/Vector 5.png',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Divider(
                                            height: 3,
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.25),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 245,
                          margin: const EdgeInsets.only(left: 7, right: 7),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19),
                            image: DecorationImage(
                              image:
                                  AssetImage(_post[index]['image'].toString()),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 17, right: 20),
                                      child: Image.asset(
                                          'assets/icons/Vector 1.png'),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 17, right: 5),
                                      child: Image.asset(
                                          'assets/icons/Vector 2.png'),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 17, right: 5),
                                child: Image.asset('assets/icons/Vector 3.png'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 9.0, left: 21.0),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '55 likes',
                            style: TextStyle(
                              fontFamily: 'Lato-Light',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Container(
                          height: 42,
                          margin: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 16, left: 10),
                                child: Text(
                                  _post[index]['nom'].toString(),
                                  style: TextStyle(
                                    fontFamily: 'Lato-Light',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Container(
                                width: 180,
                                margin:
                                    const EdgeInsets.only(top: 16, left: 10),
                                child: Text(
                                  _post[index]['commentaire'].toString(),
                                  style: TextStyle(
                                    fontFamily: 'Lato-Light',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 9.0, left: 21.0),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '15 minutes ago',
                            style: TextStyle(
                              fontFamily: 'Lato-Light',
                              color: Color.fromRGBO(0, 0, 0, 0.55),
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
