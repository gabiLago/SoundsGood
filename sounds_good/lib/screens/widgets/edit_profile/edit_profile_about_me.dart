import 'package:flutter/material.dart';

class ProfileAboutMe extends StatelessWidget {
  final TextEditingController aboutMeController;
  ProfileAboutMe({this.aboutMeController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AboutMeTextField(aboutMeController, aboutMeController.text),
        ],
      ),
    );
  }
}

class AboutMeTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  AboutMeTextField(this.controller, this.hintText);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
            maxLines: null,

          style: TextStyle(
            color: Colors.blueGrey,
          ),

          decoration: InputDecoration.collapsed(
            hintText: hintText,
          ),
          controller: controller,
        ));
  }
}
