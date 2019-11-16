import 'package:flutter/material.dart';
import 'package:sounds_good/screens/widgets/profile/shared/instrument.dart';
import 'package:sounds_good/screens/widgets/profile/edit/instrument_item.dart';

class EditInstrumentsList extends StatefulWidget {
  EditInstrumentsList({Key key, this.instruments}) : super(key: key);

  final List<Instrument> instruments;

  @override
  _EditInstrumentsListState createState() => _EditInstrumentsListState();
}


class _EditInstrumentsListState extends State<EditInstrumentsList> {
  Set<Instrument> _EditInstrumentsList = Set<Instrument>();
  
  void _handleInstrumentChanged(Instrument instrument, bool isSelected) {
    setState(() {
      if (!isSelected) {
        _EditInstrumentsList.add(instrument);
      } else {
        _EditInstrumentsList.remove(instrument);
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    

    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      children: widget.instruments.map((Instrument instrument) {
        return EditInstrumentItem(
          instrument: instrument,
          isSelected: _EditInstrumentsList.contains(instrument),
          onListChanged: _handleInstrumentChanged,
        );
      }).toList(),
    );
  }
}
