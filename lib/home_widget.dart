import 'package:flutter/material.dart';
import 'package:randolina/screens/actualite.dart';
import 'package:randolina/screens/home_page.dart';
import 'package:randolina/screens/profile_user/user_profile.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int selectIndex = 0;
  int currentTab = 0;
  List<Widget> widgetsOptions = [
    Actualits(),
    UserProfile(),
    HomePage('3'),
    HomePage('4'),
    HomePage('5'),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Actualits();
  void onTapBottomNavigation(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentScreen = HomePage('3');
            currentTab = 2;
          });
        },
        child: Image.asset(
          'assets/icons/Plus.png',
          fit: BoxFit.cover,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Actualits();
                        currentTab = 0;
                      });
                    },
                    child: Image.asset(
                      'assets/icons/Chat.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = UserProfile();
                        currentTab = 1;
                      });
                    },
                    child: Image.asset(
                      'assets/icons/Store.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              // right Tab Bar Icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage('4');
                        currentTab = 3;
                      });
                    },
                    child: Image.asset(
                      'assets/icons/Love.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage('5');
                        currentTab = 4;
                      });
                    },
                    child: Image.asset(
                      'assets/icons/Profil.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
