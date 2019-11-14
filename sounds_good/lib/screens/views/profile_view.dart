import 'package:flutter/material.dart';
import 'package:sounds_good/core/viewmodels/profile_model.dart';
import 'package:sounds_good/screens/views/base_view.dart';
import 'package:sounds_good/screens/widgets/profile/profile_header.dart';
import 'package:sounds_good/screens/widgets/profile/profile_image.dart';
import 'package:sounds_good/screens/widgets/profile/profile_title.dart';
import 'package:sounds_good/screens/widgets/profile/profile_what.dart';
import 'package:sounds_good/screens/widgets/profile/profile_videos.dart';
import 'package:sounds_good/screens/widgets/profile/profile_about_me.dart';
import 'package:sounds_good/screens/widgets/profile/profile_close_button.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
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
              child:
              ListView(padding: const EdgeInsets.all(24), children: <Widget>[
                ProfileHeader(name: model.profile.name),
                ProfileImage(),
                ProfileTitle('What can I play'),
                ProfileWhat(),
                ProfileTitle('How do I play?'),
                ProfileVideos(),
                ProfileTitle('About Me'),
                ProfileAboutMe(),
                ProfileCloseButton('Close Session'),
              ]))));
  }
}