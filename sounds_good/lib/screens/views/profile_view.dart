import 'package:flutter/material.dart';
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
  File _pickedImage;

  final TextEditingController nameController =
      TextEditingController(text: "Eric");
  final TextEditingController cityController =
      TextEditingController(text: "Barcelona");

  final String name = "Eric";
  final String city = "barcelona";

  void _edit() {
    setState(() {
      print('Edit tapped');
      mode = ProfileMode.edit;
    });
  }

  void _dismiss() {
    setState(() {
      print('Edit tapped');
      mode = ProfileMode.own;
    });
  }

  void _handleEdit() {
    print('name: ' + nameController.text);
    print('city: ' + cityController.text);
    print('handle edit');
  }

  Future<bool> _captureAndroidBackButton() {
    if (mode == ProfileMode.edit) {
      setState(() {
        print('Back Button');
        mode = ProfileMode.own;
      });
    }
    return Future(() => false);
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<ProfileModel>(
      onModelReady: (model) {
        model.getProfile();
      },
      builder: (context, model, child) => WillPopScope(
        //WillPopScope allows caputuring Android BackButton
        child: Scaffold(
          body: SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(24),
              children: <Widget>[
                ProfileDataSection(
                    profileMode: mode,
                    name: name,
                    city: city,
                    edit: _edit,
                    dismiss: _dismiss,
                    nameController: nameController,
                    cityController: cityController,
                    image: _pickedImage),
                InstrumentsSection(
                  profileMode: mode,
                  instrumentsList: [],
                ),
                ProfileVideosSection(profileMode: mode),
                ProfileDescriptionSection(profileMode: mode),
                ProfileBottomButtonsSection(
                  profileMode: mode,
                  handleEdit: _handleEdit,
                  dismiss: _dismiss,
                ),
              ],
            ),
          ),
        ),
        onWillPop: _captureAndroidBackButton,
      ),
    );
  }
}
