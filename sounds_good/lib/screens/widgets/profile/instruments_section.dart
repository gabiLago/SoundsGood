import 'package:flutter/material.dart';
import 'package:sounds_good/screens/widgets/profile/edit/instruments_list.dart';
import 'package:sounds_good/screens/widgets/profile/shared/profile_modes.dart';
import 'package:sounds_good/screens/widgets/profile/shared/instrument.dart';
import 'package:sounds_good/screens/widgets/profile/shared/section_title.dart';
import 'package:sounds_good/screens/widgets/profile/shared/instruments_list.dart';

class InstrumentsSection extends StatelessWidget {
  final ProfileMode profileMode;
  final List<String> instrumentsList;

  final List<Instrument> instruments = [
    Instrument(name: 'Zambomba'),
    Instrument(name: 'Banjo'),
    Instrument(name: 'Xilofón')
  ];

  InstrumentsSection({this.profileMode, this.instrumentsList});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ProfileSectionTitle(sectionTitle: 'What can I play?'),
        _modeSwitchHelper(),
      ],
    );
  }

  Widget _modeSwitchHelper() {
    switch (profileMode) {
      case ProfileMode.edit:
        return _editModeWidgetsList();
        break;

      default:
        return _plainWidgetsList();
        break;
    }
  }

  Widget _editModeWidgetsList() {
    return EditInstrumentsList(
      instruments: instruments,
    );
  }

  Widget _plainWidgetsList() {
    return InstrumentsList(
      instruments: instruments,
    );
  }
}
