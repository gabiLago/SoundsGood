import 'package:flutter/material.dart';
import 'package:sounds_good/core/viewmodels/profile_model.dart';
import 'package:sounds_good/screens/views/base_view.dart';
import 'package:sounds_good/screens/widgets/profile/profile_header.dart';
import 'package:sounds_good/screens/widgets/edit_profile/edit_profile_header.dart';
import 'package:sounds_good/screens/widgets/edit_profile/edit_profile_image_placeholder.dart';
import 'package:sounds_good/screens/widgets/profile/profile_title.dart';
import 'package:sounds_good/screens/widgets/profile/profile_what.dart';
import 'package:sounds_good/screens/widgets/profile/profile_videos.dart';
import 'package:sounds_good/screens/widgets/profile/profile_about_me.dart';
import 'package:sounds_good/screens/widgets/profile/profile_close_button.dart';

class EditProfileView extends StatefulWidget {
  @override
  _EditProfileViewState createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  final TextEditingController nameController = TextEditingController(text: "Pedro");
  final TextEditingController cityController = TextEditingController(text: "Zaragoza");

  @override

  void _handleEdit(){
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
              child:
              ListView(padding: const EdgeInsets.all(24), children: <Widget>[
              RawMaterialButton(
                  fillColor: Colors.white,
                  elevation: 4,
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.send,
                    color: Colors.black,
                    semanticLabel: 'Close Screen',
                  ),
                  onPressed: () => {
                    _handleEdit()
                  },
                
              ),
                EditProfileHeader(nameController: this.nameController, cityController: this.cityController,),
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