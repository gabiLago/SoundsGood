import 'package:flutter/material.dart';
import 'package:sounds_good/core/viewmodels/profile_model.dart';
import 'package:sounds_good/screens/views/base_view.dart';
import 'package:sounds_good/screens/widgets/edit_profile/edit_profile_what.dart';
import 'package:sounds_good/screens/widgets/profile/shared/profile_image.dart';
import 'package:sounds_good/screens/widgets/profile/edit/profile_image.dart';
import 'package:sounds_good/screens/widgets/profile/profile_title.dart';
import 'package:sounds_good/screens/widgets/profile/profile_what.dart';
import 'package:sounds_good/screens/widgets/profile/profile_videos.dart';
import 'package:sounds_good/screens/widgets/profile/profile_about_me.dart';
import 'package:sounds_good/screens/widgets/profile/profile_close_button.dart';
import 'package:sounds_good/screens/widgets/profile/shared/header_button.dart';
import 'package:sounds_good/screens/widgets/profile/shared/header_blank_button.dart';
import 'package:sounds_good/screens/widgets/profile/profile_modes.dart';
import 'package:sounds_good/screens/widgets/profile/own/header.dart';
import 'package:sounds_good/screens/widgets/profile/edit/header.dart';
import 'package:sounds_good/screens/widgets/edit_profile/button_accept_edit.dart';

import 'dart:io';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  profileMode _mode = profileMode.own;
  File _pickedImage;

  final TextEditingController nameController =
      TextEditingController(text: "Eric");
  final TextEditingController cityController =
      TextEditingController(text: "Barcelona");

  @override
  Widget build(BuildContext context) {
    return BaseView<ProfileModel>(
      onModelReady: (model) {
        model.getProfile();
      },
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(24),
            children: <Widget>[
              Stack(
                children: <Widget>[
                  _headerButtonSwitcher(),
                  _headerSwitcher(
                      model.profile.name, model.profile.friendlyLocation)
                ],
              ),
              _profileImageSwitcher(),
              ProfileTitle('What can I play'),
              _profileInstrumentsListSwitcher(),
              ProfileTitle('How do I play?'),
              ProfileVideos(),
              ProfileTitle('About Me'),
              ProfileAboutMe(),
              _profileBottomButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerButtonSwitcher() {
    switch (_mode) {
      case profileMode.edit:
        return Container();
        break;

      case profileMode.own:
        return ProfileHeaderButton(
          onPressed: _edit,
          icon: Icon(Icons.edit,
              color: Colors.black, semanticLabel: 'Edit Profile'),
        );
        break;

      case profileMode.user:
        return ProfileHeaderButton(
          onPressed: _dismiss,
          icon: Icon(Icons.close,
              color: Colors.black, semanticLabel: 'Close Screen'),
        );
        break;
    }
  }

  Widget _headerSwitcher(name, city) {
    switch (_mode) {
      case profileMode.edit:
        return EditProfileHeader(
            nameController: nameController, cityController: cityController);
        break;

      default:
        return UserProfileHeader(name: name, city: city);
        break;
    }
  }

  Widget _profileImageSwitcher() {
    switch (_mode) {
      case profileMode.edit:
        return EditProfileImage(_pickedImage);
        break;

      default:
        return ProfileImage();
        break;
    }
  }

  Widget _profileInstrumentsListSwitcher() {
    switch (_mode) {
      case profileMode.edit:
        return EditProfileWhat();
        break;

      default:
        return ProfileWhat();
        break;
    }
  }

  Widget _profileBottomButtons() {
    switch (_mode) {
      case profileMode.edit:
        return Column(
          children: <Widget>[
            ButtonAcceptEdit(onPressed: _handleEdit),
            ProfileCloseButton(value: 'Cancel', onPressed: _dismiss)
          ],
        );
        break;

      case profileMode.own:
        return ProfileCloseButton(value: 'Close Session', onPressed: _dismiss);
        break;

      case profileMode.user:
        return ProfileCloseButton(value: 'Close Session', onPressed: _dismiss);
        break;
    }
  }

  void _edit() {
    setState(() {
      print('Edit tapped');
      _mode = profileMode.edit;
    });
  }

  void _dismiss() {
    setState(() {
      print('Edit tapped');
      _mode = profileMode.own;
    });
  }

  void _handleEdit() {
    /*print('name: ' + nameController.text);
    print('city: ' + cityController.text);
    print('About Me: ' + aboutMeController.text);*/
    print('handle edit');
  }
}
