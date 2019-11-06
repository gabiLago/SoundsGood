import 'package:flutter/material.dart';
import 'package:sounds_good/screens/widgets/profile_header.dart';
import 'package:sounds_good/screens/widgets/profile_image.dart';
import 'package:sounds_good/screens/widgets/profile_what.dart';
import 'package:sounds_good/screens/widgets/profile_how.dart';
import 'package:sounds_good/screens/widgets/profile_videos.dart';
import 'package:sounds_good/screens/widgets/profile_about_me.dart';
import 'package:sounds_good/screens/widgets/profile_close_button.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child:
                ListView(padding: const EdgeInsets.all(24), children: <Widget>[
      ProfileHeader(),
      ProfileImage(),
      ProfileWhat(),
      ProfileHow(),
      ProfileVideos(),
      ProfileAboutMe(),
      ProfileCloseButton('Close Session'),
    ])));
  }
}