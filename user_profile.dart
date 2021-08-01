import 'package:flutter/material.dart';
import 'package:randolina/screens/profile_user/sliver_persistent_header_delegate_impl.dart';
import 'package:randolina/screens/profile_user/widgets/header.dart';

// ignore: must_be_immutable
class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Widget> _icons = [
    SizedBox(
      height: 50,
      child: Icon(
        Icons.home,
        size: 30,
      ),
    ),
    SizedBox(
      height: 50,
      child: Icon(
        Icons.image,
        size: 30,
      ),
    ),
    SizedBox(
      height: 50,
      child: Icon(
        Icons.build,
        size: 30,
      ),
    ),
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
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Header(),
            ),
            Flexible(
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
                              for (int i = 0; i < _icons.length; i++) _icons[i],
                            ],
                          ),
                          color: Colors.white,
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
                          itemCount: _post.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
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
                                ),
                              ),
                              child: Image.asset(
                                _post[index]['image'].toString(),
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: GridView.builder(
                          itemCount: 10,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
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
                                ),
                              ),
                              child: Image.asset(
                                _post[index]['image'].toString(),
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: GridView.builder(
                          itemCount: 4,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
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
                                ),
                              ),
                              child: Image.asset(
                                _post[index]['image'].toString(),
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
    );
  }
}
