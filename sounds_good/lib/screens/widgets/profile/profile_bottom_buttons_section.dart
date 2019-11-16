import 'package:flutter/material.dart';
import 'package:sounds_good/screens/widgets/profile/shared/profile_close_button.dart';
import 'package:sounds_good/screens/widgets/profile/shared/profile_modes.dart';

import 'edit/button_accept_edit.dart';

class ProfileBottomButtonsSection extends StatelessWidget {
  final ProfileMode profileMode;
  final VoidCallback handleEdit;
  final VoidCallback dismiss; 

  ProfileBottomButtonsSection({this.profileMode, this.handleEdit, this.dismiss});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _modeSwitchHelper(context)
    );
  }

  Widget _modeSwitchHelper(context) {
    Widget widget;
    switch (profileMode) {
      case ProfileMode.user:
        widget = _userModeButtons();
        break;

      case ProfileMode.own:
        widget = _ownModeButtons();
        break;

      case ProfileMode.edit:
        widget = _editModeButtons(context);
        break;
    }
    return widget;
  }

  Widget _editModeButtons(context) {
    return Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width - 50.0,
                child: ButtonAcceptEdit(onPressed: handleEdit),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width - 50.0,
                child: ProfileCloseButton(value: 'Cancel', onPressed: dismiss),
              ),
            ],
          ),
        ],

    );
  }

  Widget _ownModeButtons(){
    return ProfileCloseButton(value: 'Close Session', onPressed: dismiss);
  }

  Widget _userModeButtons(){
    return Container();
  }
}
