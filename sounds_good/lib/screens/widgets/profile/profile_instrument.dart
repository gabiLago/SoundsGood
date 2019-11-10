import 'package:flutter/material.dart';

class ProfileInstrument extends StatelessWidget {
  final String instrument;

  ProfileInstrument({this.instrument});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: const EdgeInsets.only(right: 5.0, top: 5.0),
            
            child: Container(
              width: 130,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 5.0),
                    child: Text(
                        this.instrument.isEmpty ? 'Holi' : this.instrument,
                        style: TextStyle(color: Colors.white))),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(const Radius.circular(15.0)),
                    color: Colors.deepPurple))));
  }
}
