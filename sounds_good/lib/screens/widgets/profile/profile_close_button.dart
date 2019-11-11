import 'package:flutter/material.dart';

class ProfileCloseButton extends StatelessWidget {
  final String buttonValue;

  ProfileCloseButton(this.buttonValue);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: () {},
        child: Text(this.buttonValue ?? 'button', style: TextStyle(fontSize: 18)));

  }
}
