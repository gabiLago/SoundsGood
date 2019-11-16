import 'package:flutter/material.dart';
import 'package:sounds_good/screens/widgets/profile/shared/instrument.dart';
import 'package:sounds_good/screens/widgets/profile/shared/instrument_item.dart';
/*
class InstrumentsList extends StatefulWidget {
  InstrumentsList({Key key, this.instruments}) : super(key: key);

  final List<Instrument> instruments;

  @override
  _InstrumentsListState createState() => _InstrumentsListState();
}


class _InstrumentsListState extends State<InstrumentsList> {
  Set<Instrument> _instrumentsList = Set<Instrument>();
  
  void _handleInstrumentChanged(Instrument instrument, bool isSelected) {
    setState(() {
      if (!isSelected) {
        _instrumentsList.add(instrument);
      } else {
        _instrumentsList.remove(instrument);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      
      children: widget.instruments.map((Instrument instrument) {
        return InstrumentItem(
          instrument: instrument,
          isSelected: _instrumentsList.contains(instrument),
          onListChanged: _handleInstrumentChanged,
        );
      }).toList(),
    );
  }
}
*/

class InstrumentsList extends StatelessWidget {
  InstrumentsList({this.instruments});
  final List<Instrument> instruments;

  @override
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      
      children: instruments.map((Instrument instrument) {
        return InstrumentItem(
          instrument: instrument,
        );
      }).toList(),
    );
  }
}