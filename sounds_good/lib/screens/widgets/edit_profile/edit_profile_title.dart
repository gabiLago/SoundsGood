import 'package:flutter/material.dart';

class ProfileTitle extends StatelessWidget {
  ProfileTitle(this.txt) : super();
  final String txt;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Text(txt,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          )),
      trailing: Icon(
        Icons.add_circle_outline,
        color: Colors.blueGrey.shade200,
      ),
    );
  }
}