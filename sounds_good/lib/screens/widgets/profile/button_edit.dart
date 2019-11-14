import 'package:flutter/material.dart';

class ButtonEdit extends StatelessWidget {
    final VoidCallback onPressed;

    ButtonEdit({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        width: 40.0,
        height: 40.0,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 4,
          shape: CircleBorder(),
          child: Icon(
            Icons.edit,
            color: Colors.black,
            semanticLabel: 'Close Screen',
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
