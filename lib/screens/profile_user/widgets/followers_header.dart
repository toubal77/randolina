import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FollowersHeader extends StatelessWidget {
  bool isExpand;
  FollowersHeader({required this.isExpand});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 30,
      bottom: isExpand ? 0 : 10,
      child: Container(
        width: 120,
        height: 26,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(11),
          border: Border.all(
            color: Color.fromRGBO(51, 77, 115, 0.38),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF334D73).withOpacity(0.42),
              blurRadius: 4,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            '243 Followers',
            style: TextStyle(
              fontFamily: 'Lato-Black',
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
