import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageProfileHeader extends StatelessWidget {
  bool isExpand;
  ImageProfileHeader(this.isExpand);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: isExpand ? 58 : 42,
      left: 16,
      child: Container(
        width: 95,
        height: 95,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(47),
          border: Border.all(
            width: 2,
            style: BorderStyle.solid,
            color: Colors.black,
          ),
          // la bordeur de l'image avec le blue c'est dans l'image
          // non la cause de boxShadow
          boxShadow: [
            BoxShadow(
              color: Color(0xFF334D73).withOpacity(0.43),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Image.asset(
          'assets/images/circle.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
