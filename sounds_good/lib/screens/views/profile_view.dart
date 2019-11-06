import 'package:flutter/material.dart';
import 'package:sounds_good/screens/widgets/profile_header.dart';
import 'package:sounds_good/screens/widgets/profile_image.dart';
import 'package:sounds_good/screens/widgets/profile_what.dart';
import 'package:sounds_good/screens/widgets/profile_how.dart';
import 'package:sounds_good/screens/widgets/profile_about_me.dart';

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
      ProfileAboutMe(),
    ])));
  }
}

/* children: [
            // Nombre y Ciudad
            Positioned(
            top: 60.0,
            left: 30.0,
            right: 0,
            child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Text(
                    'Jordan Ntolo', 
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,)
                  ),
                  Text(
                    'Vienna',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,)
                  ),
              ]
            ),
          ),

          // Icono 
          Positioned(
            top: 50.0,  
            right: 5.0,
            child: Container(
              child: RawMaterialButton(
                  fillColor: Colors.white,
                  elevation: 4,
                  shape: CircleBorder(),
                  
                  child: Icon(
                    Icons.edit, 
  
                    color: Colors.black,
                    semanticLabel: 'Edit Profile',
                    ),
                  
                  onPressed: () {},
                ),
            ),
         
        ),
     
        // Imagen Perfil
        Positioned(
            top: 140.0,
            left: 40.0,
            right: 40.0,
            child: Card(  // with Material
                elevation: 6.0,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child:  Image.asset('assets/images/profile.png'),              
            ),
          ),

        // Instrumentos
        Positioned(
            top: 450.0,
            left: 30.0,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What can I Play?',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,)
                  ),
                  
                ]
            ),
          ),


      ]*/
