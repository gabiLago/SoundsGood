import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sounds_good/core/viewmodels/profile_model.dart';
import 'package:sounds_good/screens/widgets/profile/shared/profile_close_button.dart';
import 'package:sounds_good/screens/widgets/profile/shared/profile_modes.dart';

import 'edit/button_accept_edit.dart';

class ProfileBottomButtonsSection extends StatefulWidget {
  final ProfileMode profileMode;
  final VoidCallback dismiss;

  ProfileBottomButtonsSection({this.profileMode, this.dismiss});

  @override
  _ProfileBottomButtonsSectionState createState() =>
      _ProfileBottomButtonsSectionState();
}

class _ProfileBottomButtonsSectionState
    extends State<ProfileBottomButtonsSection> {
  void _handleEdit() {
    Provider.of<ProfileModel>(context, listen: false).updateInstrumentsList();
    Navigator.pushNamed(context, 'profile');
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: _modeSwitchHelper(context));
  }

  Widget _modeSwitchHelper(context) {
    Widget buttons;
    switch (widget.profileMode) {
      case ProfileMode.user:
        buttons = _userModeButtons();
        break;

      case ProfileMode.own:
        buttons = _ownModeButtons();
        break;

      case ProfileMode.edit:
        buttons = _editModeButtons(context);
        break;
    }
    return buttons;
  }

  Widget _editModeButtons(context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width - 50.0,
              child: RaisedButton(
                onPressed: _handleEdit,
                color: Colors.red.shade400,
                child: Text('Accept', style: TextStyle(fontSize: 18)),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width - 50.0,
              child: ProfileCloseButton(
                  value: 'Cancel', onPressed: widget.dismiss),
            ),
          ],
        ),
      ],
    );
  }

  Widget _ownModeButtons() {
    return ProfileCloseButton(
        value: 'Close Session', onPressed: widget.dismiss);
  }

  Widget _userModeButtons() {
    return Container();
  }
}
