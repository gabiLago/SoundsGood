import 'package:flutter/material.dart';
import 'package:sounds_good/core/viewmodels/profile_model.dart';
import 'package:sounds_good/screens/views/base_view.dart';
import 'package:sounds_good/screens/widgets/edit_profile/how_to_reach_me.dart';
import 'package:sounds_good/screens/widgets/edit_profile/edit_profile_header.dart';
import 'package:sounds_good/screens/widgets/edit_profile/edit_profile_image_placeholder.dart';
import 'package:sounds_good/screens/widgets/profile/profile_title.dart';
import 'package:sounds_good/screens/widgets/edit_profile/edit_profile_what.dart';
import 'package:sounds_good/screens/widgets/edit_profile/add_instrument.dart';
import 'package:sounds_good/screens/widgets/profile/profile_videos.dart';
import 'package:sounds_good/screens/widgets/edit_profile/edit_profile_about_me.dart';
import 'package:sounds_good/screens/widgets/profile/profile_close_button.dart';
import 'package:sounds_good/screens/widgets/edit_profile/button_accept_edit.dart';

import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class EditProfileView extends StatefulWidget {
  @override
  _EditProfileViewState createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  final TextEditingController nameController =
      TextEditingController(text: "Eric");
  final TextEditingController cityController =
      TextEditingController(text: "Barcelona");
  final TextEditingController aboutMeController = TextEditingController(
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent efficitur purus a aliquam luctus. In vitae imperdiet lectus. Nunc a ante eget dui luctus euismod. Ut ultricies mauris vitae sagittis mollis. Aliquam porta venenatis egestas. Vivamus et orci sed tortor varius tempor. Nulla facilisi. Vestibulum a sapien neque. Mauris ac magna dui. Cras ultricies velit sit amet turpis ultrices, sed finibus urna suscipit. Nulla eget blandit nunc, sit amet dictum nibh. Nam sed orci quis ipsum laoreet commodo at vitae sapien. Integer eget lacus porttitor, ultrices urna quis, laoreet enim. In vitae lectus et libero pulvinar varius eget in magna.");

  File _pickedImage;

  @override
  void _handleEdit() {
    /*print('name: ' + nameController.text);
    print('city: ' + cityController.text);
    print('About Me: ' + aboutMeController.text);*/
    print('handle edit');
  }

  void _cancel() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: <Widget>[
            Stack(
              children: <Widget>[
                EditProfileHeader(
                  nameController: this.nameController,
                  cityController: this.cityController,
                ),
              ],
            ),
            EditProfileImage(_pickedImage),
            ProfileTitle('How to Reach Me'),
            ReachMeSelector(),
            ProfileTitle('What can I play'),
            EditProfileWhat(),
            AddInstrument(),
            ProfileTitle('How do I play?'),
            ProfileVideos(),
            ProfileTitle('About Me'),
            ProfileAboutMe(aboutMeController: this.aboutMeController),
            ButtonAcceptEdit(onPressed: _handleEdit),
            ProfileCloseButton(value: 'Cancel', onPressed: _cancel),
          ],
        ),
      ),
    );
  }
}
