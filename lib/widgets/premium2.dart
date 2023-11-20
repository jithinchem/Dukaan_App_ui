import 'package:flutter/material.dart';

class Premium2 extends StatelessWidget {
  String text;

  Premium2({
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 15),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          Spacer(),
          Icon(Icons.add),
        ],
      ),
    );
  }
}
