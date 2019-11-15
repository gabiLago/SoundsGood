import 'package:flutter/material.dart';
import 'package:sounds_good/core/viewmodels/profile_model.dart';
import 'package:sounds_good/screens/views/base_view.dart';
import 'package:sounds_good/screens/widgets/profile/profile_image.dart';
import 'package:sounds_good/screens/widgets/profile/profile_title.dart';
import 'package:sounds_good/screens/widgets/profile/profile_what.dart';
import 'package:sounds_good/screens/widgets/profile/profile_videos.dart';
import 'package:sounds_good/screens/widgets/profile/profile_about_me.dart';
import 'package:sounds_good/screens/widgets/profile/profile_close_button.dart';
import 'package:sounds_good/screens/widgets/profile/button_edit.dart';
import 'package:sounds_good/screens/widgets/profile/profile_modes.dart';
import 'package:sounds_good/screens/widgets/profile/own/header.dart';
import 'package:sounds_good/screens/widgets/profile/edit/header.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  profileMode _mode = profileMode.user;

  final TextEditingController nameController =
      TextEditingController(text: "Eric");
  final TextEditingController cityController =
      TextEditingController(text: "Barcelona");

  void _profileModeSwitcher() {
    print('mode');
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
                  // ButtonEdit(onPressed: _edit),
                  //UserProfileHeader(name: model.profile.name),
                  _headerSwicther(model.profile.name, model.profile.friendlyLocation)
                ],
              ),
              ProfileImage(),
              ProfileTitle('What can I play'),
              ProfileWhat(),
              ProfileTitle('How do I play?'),
              ProfileVideos(),
              ProfileTitle('About Me'),
              ProfileAboutMe(),
              //ProfileCloseButton(value: 'Close Session', onPressed: _close),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerSwicther(name, city) {
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
}
