import 'package:flutter/material.dart';

enum FilterOptions {
  editprofile,
  singout,
  nul,
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
          if (selectedValue == FilterOptions.editprofile) {
            showPopMenu = true;
          } else {
            showPopMenu = false;
          }
          if (selectedValue == FilterOptions.singout) {
            showPopMenu = true;
          } else {
            showPopMenu = false;
          }
        });
      },
      icon: SizedBox(
        width: 13,
        child: Image.asset(
          'assets/icons/Vector 6.png',
          fit: BoxFit.cover,
        ),
      ),
      itemBuilder: (_) => [
        PopupMenuItem(
          value: FilterOptions.editprofile,
          child: Text(
            'Edit profil',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Lato-Black',
              color: Colors.black,
            ),
          ),
        ),
        PopupMenuItem(
          height: 5,
          value: FilterOptions.nul,
          child: Divider(
            height: 3,
            color: Colors.black,
          ),
        ),
        PopupMenuItem(
          value: FilterOptions.singout,
          child: Text(
            'Sign out',
            style: TextStyle(
              fontFamily: 'Lato-Black',
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
