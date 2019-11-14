import 'package:flutter/material.dart';

class ButtonDismiss extends StatelessWidget {
    final VoidCallback onPressed;

    ButtonDismiss({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        width: 50.0,
        height: 50.0,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 4,
          shape: CircleBorder(),
          child: Icon(
            Icons.close,
            color: Colors.black,
            semanticLabel: 'Close Screen',
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
