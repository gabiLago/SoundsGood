import 'package:flutter/material.dart';
import 'package:sounds_good/core/viewmodels/profile_model.dart';

class EditProfileHeader extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController cityController;

  EditProfileHeader({this.nameController, this.cityController});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 9, // 90%
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NameTextField(nameController, nameController.text),
                CityTextField(cityController, cityController.text),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NameTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  NameTextField(this.controller, this.hintText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300.0,
        child: TextField(
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.blueGrey,
          ),
          maxLines: 1,
          decoration: InputDecoration.collapsed(
            //isDense: true,
            //contentPadding: EdgeInsets.all(0.0),
            hintText: hintText,
          ),
          controller: controller,
        ));
  }
}

class CityTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  CityTextField(this.controller, this.hintText);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.blueGrey,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration.collapsed(
        //isDense: true,
        //contentPadding: EdgeInsets.all(0.0),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          height: 1,
        ),
        hoverColor: Colors.amber,
      ),
      controller: controller,
    );
  }
}
