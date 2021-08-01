import 'package:flutter/material.dart';

class IconHeader extends StatelessWidget {
  const IconHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Image.asset(
            'assets/icons/search icon.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        SizedBox(
          height: 24,
          width: 24,
          child: Image.asset(
            'assets/icons/bookmark.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
