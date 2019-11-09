import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;

  ProfileHeader({this.name});

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
                Text(name,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    )),
                Text('Vienna',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          ),
          Expanded(
              flex: 1, // 10%
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
              )),
        ],
      ),
    );
  }
}
