import 'package:flutter/material.dart';

class MemberItem extends StatelessWidget {
  final int index;

  const MemberItem({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageHeight = 60.0;
    final buttonHeight = 12.0;
    return Card(
      elevation: 2,
      clipBehavior: Clip.antiAlias,
      margin: calculatePadding(index),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: imageHeight,
              decoration: BoxDecoration(color: Colors.blueGrey),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Main text',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(74, 21, 75, 1),
                        ),
                      ),
                      Text(
                        'Sub title',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(132, 140, 167, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  color: Color.fromRGBO(232, 232, 232, 1),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.pin_drop,
                        color: Color.fromRGBO(46, 182, 125, 1),
                        size: 14,
                      ),
                      Text(
                        "1km from you",
                        style: TextStyle(
                          color: Color.fromRGBO(132, 140, 167, 1),
                          fontSize: 11,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              right: 8,
              top: imageHeight - buttonHeight / 2,
              child: Container(
                width: buttonHeight,
                height: buttonHeight,
                child: RawMaterialButton(
                  fillColor: Colors.blueAccent,
                  elevation: 4,
                  shape: CircleBorder(),
                  child: Icon(Icons.favorite_border, color: Colors.white,),
                  onPressed: () {},
                ),
              ))
        ],
      ),
    );
  }
}

EdgeInsetsGeometry calculatePadding(int position) {
  if (position % 2 == 0) {
    return EdgeInsets.only(left: 12, top: 12, right: 6);
  } else {
    return EdgeInsets.only(left: 6, top: 12, right: 12);
  }
}
