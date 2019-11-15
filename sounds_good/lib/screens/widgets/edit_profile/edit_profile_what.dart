import 'package:flutter/material.dart';
import 'package:sounds_good/screens/widgets/instruments/instrument.dart';
import 'package:sounds_good/screens/widgets/instruments/instruments_list_edit.dart';

class ProfileWhat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InstrumentsList(
      instruments: <Instrument>[
        Instrument(name: 'Zambomba'),
        Instrument(name: 'Pandereta'),
        Instrument(name: 'Castañuelas'),
        Instrument(name: 'Cajón'),
      ],
    );
  }
}
