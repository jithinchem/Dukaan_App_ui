import 'package:flutter/material.dart';

class Premium1 extends StatelessWidget {
  Icon iconData;
  String FirstText;
  String SecondText;
  String ThirdText;
  Premium1(
      {required this.iconData,
      required this.FirstText,
      required this.SecondText,
      required this.ThirdText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 18),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            child: CircleAvatar(
              radius: 27,
              backgroundColor: Colors.white,
              child: iconData,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  FirstText,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                Text(SecondText),
                Text(ThirdText)
              ],
            ),
          )
        ],
      ),
    );
  }
}
