import 'package:flutter/material.dart';
import 'package:sounds_good/screens/widgets/profile/shared/profile_modes.dart';
import 'package:sounds_good/screens/widgets/profile/shared/section_title.dart';

class ProfileDescriptionSection extends StatelessWidget {
  final ProfileMode profileMode;

  ProfileDescriptionSection({this.profileMode});

  // TODO Edit mode for About Me

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProfileSectionTitle(sectionTitle: 'About me'),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer in gravida neque. Curabitur id tristique nibh, vel elementum dolor. Donec eget varius quam, eget elementum orci. Praesent eget ultricies enim. Phasellus orci lorem, tincidunt eget porttitor quis, tincidunt ac metus. Aenean sed nulla magna. Etiam purus lorem, rhoncus a dolor vel, efficitur elementum neque. Sed finibus vel turpis a interdum. Quisque facilisis tincidunt mi, sit amet viverra nunc pharetra vitae. Proin enim odio, tempus id sapien ut, aliquam mattis nisi. Nullam id eros quis justo ultricies feugiat pretium eget lectus. Nullam elementum maximus tempus. In quis ipsum sodales, commodo dolor a, viverra tellus.')
          ],
        ),
      ),
    ]);
  }
}
