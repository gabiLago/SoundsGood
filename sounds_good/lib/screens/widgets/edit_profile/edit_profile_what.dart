import 'package:flutter/material.dart';
import 'package:sounds_good/screens/widgets/profile/profile_instrument.dart';

class ProfileWhat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: <Widget>[
                Container(
                    child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0, 8.0, 0, 4.0),
                        child: IconButton(
                          icon: Icon(Icons.add_circle),
                          onPressed: () => {},
                          iconSize: 30.0,
                          color: Colors.deepPurple,
                            
                          ))),
                ProfileInstrument(instrument: 'Guitar'),
                ProfileInstrument(instrument: 'Bass'),
                ProfileInstrument(instrument: 'Hammond'),
              ],
            )
          ],
        ));
  }
}
