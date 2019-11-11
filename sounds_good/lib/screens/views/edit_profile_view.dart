import 'package:flutter/material.dart';
import 'package:sounds_good/core/viewmodels/profile_model.dart';
import 'package:sounds_good/screens/views/base_view.dart';
import 'package:sounds_good/screens/widgets/profile/profile_header.dart';
import 'package:sounds_good/screens/widgets/edit_profile/edit_profile_header.dart';
import 'package:sounds_good/screens/widgets/edit_profile/edit_profile_image_placeholder.dart';
import 'package:sounds_good/screens/widgets/profile/profile_title.dart';
import 'package:sounds_good/screens/widgets/edit_profile/edit_profile_what.dart';
import 'package:sounds_good/screens/widgets/profile/profile_videos.dart';
import 'package:sounds_good/screens/widgets/profile/profile_about_me.dart';
import 'package:sounds_good/screens/widgets/profile/profile_close_button.dart';

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

  File _pickedImage;

  @override
  void _handleEdit() {
    print('name: ' + nameController.text);
    print('city: ' + cityController.text);
  }

  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          child: FloatingActionButton(
                          
                          backgroundColor: Colors.white,
                          elevation: 4,
                          shape: CircleBorder(),
                          child: Icon(
                            
                            Icons.close,
                            color: Colors.black,
                            semanticLabel: 'Close Screen',
                          ),
                          onPressed: () {},
                        ),
                      ),
                      ),
                      EditProfileHeader(
                        nameController: this.nameController,
                        cityController: this.cityController,
                      ),
                    ],
                  ),
                  ProfileImage(_pickedImage),
                  ProfileTitle('What can I play'),
                  ProfileWhat(),
                  ProfileTitle('How do I play?'),
                  ProfileVideos(),
                  ProfileTitle('About Me'),
                  ProfileAboutMe(),
                  RaisedButton(
                      onPressed: () => _handleEdit(),
                      color: Colors.red.shade400,
                      child: Text('Accept', style: TextStyle(fontSize: 18)),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      )),
                  ProfileCloseButton('Close'),
                ]))));
  }
}
