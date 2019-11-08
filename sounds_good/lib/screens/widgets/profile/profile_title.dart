import 'package:flutter/material.dart';


class ProfileTitle extends StatelessWidget {
  ProfileTitle(this.txt):super();
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Row(
          children: <Widget>[
            Text(txt,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                )),
          ],
        ));
  }
}
