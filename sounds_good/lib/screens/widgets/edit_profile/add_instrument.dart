import 'package:flutter/material.dart';

class AddInstrument extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 2.5, 16.0, 2.5),
            child: SizedBox(
              height: 16.0,
              width: 16.0,
              child: IconButton(
                padding: EdgeInsets.all(0),
                onPressed: () => {},
                icon: Icon(Icons.add),
                iconSize: 16,
                color: Colors.blueGrey.shade200,
              ),
            )),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(const Radius.circular(15.0)),
          color: Colors.white,
          border: Border.all(color: Colors.blueGrey.shade200, width: 2.0),
        ));
  }
}
