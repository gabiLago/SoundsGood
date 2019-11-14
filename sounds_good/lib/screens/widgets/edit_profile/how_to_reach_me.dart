import 'package:flutter/material.dart';

class ReachMeSelector extends StatelessWidget {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return /*SizedBox(
      width: 100.0,
       child: const DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black,
      )
      child: Row(
        children: <Widget>[
          Text('Mail'),
          Switch(
            value: isSwitched,
            onChanged: (value) => {},
            activeTrackColor: Colors.lightGreenAccent,
            activeColor: Colors.green,
          ),
          Text('WhatsApp'),
        ],
      ),
      ),
    );*/
        Row(
      children: <Widget>[
        Container(
          child: SizedBox(
            width: 160.0,
            height: 20.0,
            
            child: Row(
              
              children: <Widget>[
                Text('Mail'),
                Switch( 
                  value: isSwitched,
                  onChanged: (value) => {},
                  activeTrackColor: Colors.blueGrey.shade100,
                  activeColor: Colors.blueGrey,
                ),
                Text('WhatsApp'),
              ],
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(const Radius.circular(15.0)),
            color: Colors.white,
            border: Border.all(color: Colors.blueGrey.shade200, width: 2.0),
          ),
        )
      ],
    );
  }
}
