import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String city;

  ProfileHeader({this.name, this.city});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 9, // 90%
            child: headerContent(name, city),
          ),
        ],
      ),
    );
  }
}


Column headerContent(name, city) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(name,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          )),
      Text(city,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          )),
    ],
  );
}
