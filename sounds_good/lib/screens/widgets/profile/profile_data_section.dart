import 'package:flutter/material.dart';
import 'package:sounds_good/screens/widgets/profile/edit/how_to_reach_me.dart';
import 'package:sounds_good/screens/widgets/profile/shared/profile_modes.dart';
import 'package:sounds_good/screens/widgets/profile/shared/profile_image.dart';
import 'package:sounds_good/screens/widgets/profile/edit/profile_image.dart';
import 'package:sounds_good/screens/widgets/profile/shared/header_button.dart';
import 'package:sounds_good/screens/widgets/profile/own/header.dart';
import 'package:sounds_good/screens/widgets/profile/edit/header.dart';

import 'dart:io';

import 'package:sounds_good/screens/widgets/profile/shared/section_title.dart';

class ProfileDataSection extends StatelessWidget {
  final ProfileMode profileMode;
  final String name;
  final String city;
  final VoidCallback edit;
  final VoidCallback dismiss;
  final TextEditingController nameController;
  final TextEditingController cityController;
  final File image;

  ProfileDataSection(
      {this.profileMode,
      this.name,
      this.city,
      this.edit,
      this.dismiss,
      this.nameController,
      this.cityController,
      this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _modeSwitchHelper(),
    );
  }

  List<Widget> _modeSwitchHelper() {
    List<Widget> widgetsList = [];
    switch (profileMode) {
      case ProfileMode.user:
        widgetsList = _userModeWidgetsList();
        break;

      case ProfileMode.own:
        widgetsList = _ownModeWidgetsList();
        break;

      case ProfileMode.edit:
        widgetsList = _editModeWidgetsList();
        break;
    }

    return widgetsList;
  }

  List<Widget> _userModeWidgetsList() {
    print('Edit Helper');
    return <Widget>[
      _headerHelper(
        buttonHeader: ProfileHeaderButton(
          onPressed: dismiss,
          icon: Icon(Icons.close,
              color: Colors.black, semanticLabel: 'Close Profile'),
        ),
        headerContent: UserProfileHeader(name: name, city: city),
      ),
      ProfileImage(),
    ];
  }

  List<Widget> _ownModeWidgetsList() {
    return <Widget>[
      _headerHelper(
        buttonHeader: ProfileHeaderButton(
          onPressed: edit,
          icon: Icon(Icons.edit,
              color: Colors.black, semanticLabel: 'Edit Profile'),
        ),
        headerContent: UserProfileHeader(name: name, city: city),
      ),
      ProfileImage(),
    ];
  }

  List<Widget> _editModeWidgetsList() {
    return <Widget>[
      _headerHelper(
        buttonHeader: Container(),
        headerContent: EditProfileHeader(
            nameController: nameController, cityController: cityController),
      ),
      EditProfileImage(image),
      ProfileSectionTitle(sectionTitle: 'How to reach me'),
      HowToReachMeSelector(),
    ];
  }

  Widget _headerHelper({Widget buttonHeader, Widget headerContent}) {
    return Stack(
      children: <Widget>[
        buttonHeader,
        headerContent,
      ],
    );
  }
}
