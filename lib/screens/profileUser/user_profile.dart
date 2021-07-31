import 'package:flutter/material.dart';
import 'package:randolina/screens/profileUser/sliverPersistentHeaderDelegateImpl.dart';
import 'package:randolina/screens/profileUser/widgets/header.dart';

// ignore: must_be_immutable
class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Widget> _icons = [
    Container(
      height: 50,
      child: Icon(
        Icons.home,
        size: 30,
      ),
    ),
    Container(
      height: 50,
      child: Icon(
        Icons.image,
        size: 30,
      ),
    ),
    Container(
      height: 50,
      child: Icon(
        Icons.build,
        size: 30,
      ),
    ),
  ];
  List _post = [
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
  void initState() {
    super.initState();
    _tabController = TabController(length: _icons.length, vsync: this);
    _tabController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0xFFE5E5E5),
        child: Expanded(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Header(),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: NestedScrollView(
                    headerSliverBuilder:
                        (BuildContext context, bool innerBoxIsScrolled) {
                      return <Widget>[
                        SliverPersistentHeader(
                          pinned: true,
                          delegate: SliverPersistentHeaderDelegateImpl(
                            tabBar: TabBar(
                              labelColor: Colors.black,
                              indicatorColor: Colors.red,
                              controller: _tabController,
                              indicatorWeight: 3,
                              tabs: [
                                for (int i = 0; i < _icons.length; i++)
                                  _icons[i],
                              ],
                            ),
                          ),
                        ),
                      ];
                    },
                    body: TabBarView(
                      controller: _tabController,
                      children: [
                        Container(
                          color: Colors.white,
                          child: GridView.builder(
                            shrinkWrap: false,
                            scrollDirection: Axis.vertical,
                            itemCount: _post.length,
                            gridDelegate:
                                new SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio:
                                  MediaQuery.of(context).size.width /
                                      (MediaQuery.of(context).size.height / 2),
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                                child: Image.asset(
                                  _post[index]['image'],
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: GridView.builder(
                            shrinkWrap: false,
                            scrollDirection: Axis.vertical,
                            itemCount: 10,
                            gridDelegate:
                                new SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio:
                                  MediaQuery.of(context).size.width /
                                      (MediaQuery.of(context).size.height / 2),
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                                child: Image.asset(
                                  _post[index]['image'],
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: GridView.builder(
                            shrinkWrap: false,
                            scrollDirection: Axis.vertical,
                            itemCount: 4,
                            gridDelegate:
                                new SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio:
                                  MediaQuery.of(context).size.width /
                                      (MediaQuery.of(context).size.height / 2),
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                                child: Image.asset(
                                  _post[index]['image'],
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
