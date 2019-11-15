import 'package:flutter/material.dart';

class ButtonAcceptEdit extends StatelessWidget {
  
  final VoidCallback onPressed;

  ButtonAcceptEdit({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      color: Colors.red.shade400,
      child: Text('Accept', style: TextStyle(fontSize: 18)),
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
      ),
    );
  }
}
