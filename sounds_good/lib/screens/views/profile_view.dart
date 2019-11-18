import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sounds_good/core/viewmodels/base_model.dart';
import 'package:sounds_good/core/viewmodels/profile_model.dart';
import 'package:sounds_good/screens/views/base_view.dart';
import 'package:sounds_good/screens/widgets/profile/profile_bottom_buttons_section.dart';

import 'package:sounds_good/screens/widgets/profile/shared/profile_modes.dart';
import 'package:sounds_good/screens/widgets/profile/profile_data_section.dart';
import 'package:sounds_good/screens/widgets/profile/instruments_section.dart';
import 'package:sounds_good/screens/widgets/profile/profile_videos_section.dart';
import 'package:sounds_good/screens/widgets/profile/profile_description_section.dart';

import 'dart:io';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  ProfileMode mode = ProfileMode.own;

  // TODO This should have been injected by data from model.profile
  final TextEditingController nameController =
      TextEditingController(text: 'Eric');
  final TextEditingController cityController =
      TextEditingController(text: 'Barcelona');
  final TextEditingController descriptionController = TextEditingController(
      text:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer in gravida neque. Curabitur id tristique nibh, vel elementum dolor. Donec eget varius quam, eget elementum orci. Praesent eget ultricies enim. Phasellus orci lorem, tincidunt eget porttitor quis, tincidunt ac metus. Aenean sed nulla magna. Etiam purus lorem, rhoncus a dolor vel, efficitur elementum neque. Sed finibus vel turpis a interdum. Quisque facilisis tincidunt mi, sit amet viverra nunc pharetra vitae. Proin enim odio, tempus id sapien ut, aliquam mattis nisi. Nullam id eros quis justo ultricies feugiat pretium eget lectus. Nullam elementum maximus tempus. In quis ipsum sodales, commodo dolor a, viverra tellus.');
  File _pickedImage;

  void _switchToEditMode() {
    setState(() {
      mode = ProfileMode.edit;
    });
  }

  void _dismiss() {
    setState(() {
      mode = ProfileMode.own;
    });
  }

  void _handleEdit() {
    print('Handling data from edit screen:');
    print('name: ' + nameController.text);
    print('city: ' + cityController.text);
  }

  Future<bool> _captureAndroidBackButton() {
    if (mode == ProfileMode.edit) {
      setState(() {
        mode = ProfileMode.own;
      });
      return Future(() => false);
    } else {
      return Future(() => true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<ProfileModel>(
      onModelReady: (model) {
        model.getProfile();
      },
      builder: (context, model, child) => WillPopScope(
        child: Scaffold(
          body: model.state == ViewState.Idle
              ? SafeArea(
                  child: ListView(
                    padding: const EdgeInsets.all(24),
                    children: <Widget>[
                      ProfileDataSection(
                          profileMode: mode,
                          name: nameController.text,
                          city: cityController.text,
                          edit: _switchToEditMode,
                          dismiss: _dismiss,
                          nameController: nameController,
                          cityController: cityController,
                          image: _pickedImage),
                      InstrumentsSection(profileMode: mode),
                      ProfileVideosSection(profileMode: mode),
                      ProfileDescriptionSection(
                        profileMode: mode,
                        descriptionText: descriptionController.text,
                        controller: descriptionController,
                      ),
                      ProfileBottomButtonsSection(
                        profileMode: mode,
                        dismiss: _dismiss,
                      ),
                    ],
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ),
        onWillPop: _captureAndroidBackButton,
      ),
    );
  }
}
