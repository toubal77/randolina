import 'package:flutter/material.dart';
import 'package:randolina/screens/actualite.dart';
import 'package:randolina/screens/homePage.dart';
import 'package:randolina/screens/user_profile.dart';

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
  void onTapBottomNavigation(index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Image.asset('assets/icons/Plus.png'),
        onPressed: () {
          setState(() {
            currentScreen = HomePage('3');
            currentTab = 2;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
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
                    child: Image.asset('assets/icons/Chat.png'),
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
                    child: Image.asset('assets/icons/Store.png'),
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
                    child: Image.asset('assets/icons/Love.png'),
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
                    child: Image.asset('assets/icons/Profil.png'),
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
