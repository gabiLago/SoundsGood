import 'package:flutter/material.dart';
import 'package:sounds_good/screens/widgets/profile_instrument.dart';

class ProfileWhat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('What can I Play?',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                )),
            Row(
              children: <Widget>[
                ProfileInstrument('Guitar'),
                ProfileInstrument('Bass'),
              ],
            )
          ],
        ));
  }
}
