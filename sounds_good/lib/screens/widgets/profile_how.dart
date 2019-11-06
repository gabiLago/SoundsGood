import 'package:flutter/material.dart';


class ProfileHow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Row(
          children: <Widget>[
            Text('How do I Play?',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                )),
          ],
        ));
  }
}
