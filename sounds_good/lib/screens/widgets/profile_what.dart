import 'package:flutter/material.dart';
import 'package:sounds_good/screens/widgets/profile_instrument.dart';

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
                ProfileInstrument('Guitar'),
                ProfileInstrument('Bass'),
              ],
            )
          ],
        ));
  }
}
