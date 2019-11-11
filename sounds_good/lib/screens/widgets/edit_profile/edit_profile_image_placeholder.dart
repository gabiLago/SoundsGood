import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ProfileImage extends StatefulWidget {
  File _pickedImage;
  ProfileImage(this._pickedImage);
  @override
  _ProfileImageState createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  

  

  Future getImage() async {
   final imageSource = await showDialog<ImageSource>(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text("Select the image source"),
            actions: <Widget>[
              MaterialButton(
                child: Text("Camera"),
                onPressed: () => Navigator.pop(context, ImageSource.camera),
              ),
              MaterialButton(
                child: Text("Gallery"),
                onPressed: () => Navigator.pop(context, ImageSource.gallery),
              )
            ],
          )
  );

  if(imageSource != null) {
    final file = await ImagePicker.pickImage(source: imageSource);
    if(file != null) {
      setState(() => widget._pickedImage = file);
    }
  }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          height: 300,
          child: widget._pickedImage == null
            ? Card(
          
          elevation: 6.0,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(     
            borderRadius: BorderRadius.circular(15.0),
            side:BorderSide(width: 16.0, color: Colors.blueGrey.shade100),
      
            
          ),
          
          child: Center(
            child: IconButton(
              icon: Icon(
              Icons.add_circle,),
              color: Colors.blueGrey.shade100,              
              iconSize: 80.0,
              onPressed: getImage,

              ),
              ),
        )
            : Image.file(widget._pickedImage), 
          ));
  }
}
