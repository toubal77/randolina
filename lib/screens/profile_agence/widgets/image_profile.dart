import 'package:flutter/material.dart';

class ImageProfile extends StatelessWidget {
  const ImageProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 110,
      bottom: 0,
      child: Container(
        width: 103,
        height: 26,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromRGBO(51, 77, 115, 0.38),
          ),
          borderRadius: BorderRadius.circular(11),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(51, 77, 115, 0.42),
              blurRadius: 4,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Text(
              '243 Followers',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'Lato-Black',
                fontWeight: FontWeight.w800,
                fontSize: 11,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
