import 'package:flutter/material.dart';

enum FilterOptions {
  EditProfile,
  SingOut,
}

class PopMenuHeader extends StatefulWidget {
  const PopMenuHeader({Key? key}) : super(key: key);

  @override
  _PopMenuHeaderState createState() => _PopMenuHeaderState();
}

class _PopMenuHeaderState extends State<PopMenuHeader> {
  late bool showPopMenu;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      )),
      onSelected: (FilterOptions selectedValue) {
        setState(() {
          if (selectedValue == FilterOptions.EditProfile) {
            showPopMenu = true;
          } else {
            showPopMenu = false;
          }
          if (selectedValue == FilterOptions.SingOut) {
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
    );
  }
}
