import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sounds_good/core/viewmodels/profile_model.dart';
import 'package:sounds_good/screens/widgets/profile/edit/instrument_item.dart';

class EditInstrumentsList extends StatefulWidget {
  EditInstrumentsList({Key key, this.instruments}) : super(key: key);

  final List<String> instruments;

  @override
  _EditInstrumentsListState createState() => _EditInstrumentsListState();
}

class _EditInstrumentsListState extends State<EditInstrumentsList> {
  Set<String> _instrumentsSelected = Set<String>();

  void _handleInstrumentChanged(String instrument, bool isSelected) {
    setState(() {
      isSelected
          ? _instrumentsSelected.remove(instrument)
          : _instrumentsSelected.add(instrument);
    });
    Provider.of<ProfileModel>(context, listen: false)
        .instrumentsToRemove(instrumentsSelected: _instrumentsSelected);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileModel>(
      builder: (context, data, child) {
        List<String> instruments = data.profile.instruments;
        return Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: instruments.map((String instrument) {
            return EditInstrumentItem(
              instrument: instrument,
              isSelected: _instrumentsSelected.contains(instrument),
              onListChanged: _handleInstrumentChanged,
            );
          }).toList(),
        );
      },
    );
  }
}
