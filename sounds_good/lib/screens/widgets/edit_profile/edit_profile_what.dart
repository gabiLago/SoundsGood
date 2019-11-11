import 'package:flutter/material.dart';
import 'package:sounds_good/screens/widgets/profile/profile_instrument.dart';

class ProfileWhat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, // gap between adjacent chips
      runSpacing: 4.0, // gap between lines
      children: <Widget>[
        IconButton(
          alignment: Alignment.center,
          icon: Icon(Icons.add_circle),
          onPressed: () => {},
          iconSize: 30.0,
          color: Colors.deepPurple,
        ),
        ProfileInstrument(instrument: 'Guitar'),
        ProfileInstrument(instrument: 'Bass'),
        ProfileInstrument(instrument: 'Violin'),
        ProfileInstrument(instrument: 'Viola'),
        ProfileInstrument(instrument: 'Double Bass'),
      ],
    );
  }
}
