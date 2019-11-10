import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          height: 300,
          child: Card(
          
          elevation: 6.0,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(     
            borderRadius: BorderRadius.circular(15.0),
            side:BorderSide(width: 16.0, color: Colors.blueGrey.shade100),
      
            
          ),
          
          child: Center(
            child: Icon(
              Icons.add_circle,
              color: Colors.blueGrey.shade100,              
              size: 80.0
              ),
              ),
        )));
  }
}
