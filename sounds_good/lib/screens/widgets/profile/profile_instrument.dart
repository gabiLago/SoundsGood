import 'package:flutter/material.dart';

class ProfileInstrument extends StatelessWidget {
  final String instrumentName;

  ProfileInstrument(this.instrumentName);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 5.0, top: 5.0),
        child: Container(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 5.0),
                child: Text(this.instrumentName,
                    style: TextStyle(color: Colors.white))),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(const Radius.circular(15.0)),
                color: Colors.deepPurple)));
  }
}
