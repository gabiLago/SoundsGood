import 'package:flutter/material.dart';


class ProfileCloseButton extends StatelessWidget {
  final String buttonValue;

  ProfileCloseButton(this.buttonValue);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          const SizedBox(height: 30),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0)),
            onPressed: () {},
            child: Text(this.buttonValue ?? 'button', style: TextStyle(fontSize: 18)),
          )
        ]),
      );
  }
}