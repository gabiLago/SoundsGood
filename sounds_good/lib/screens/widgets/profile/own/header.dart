import 'package:flutter/material.dart';

class UserProfileHeader extends StatelessWidget {
  final String name;
  final String city;

  UserProfileHeader({this.name, this.city});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 9, // 90%
            child: _headerContent(name, city),
          ),
        ],
      ),
    );
  }
}

Column _headerContent(name, city) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        name,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
        ),
      ),
      Text(
        city,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}
/*

class UserProfileHeader extends StatelessWidget {
  final String name;
  final String city;

  UserProfileHeader ({this.name, this.city});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text('User'),
        ),
        Center(
          child: Text(name),
        ),
        Center(
          child: Text(name),
        ),
      ],
    );
  }
}*/