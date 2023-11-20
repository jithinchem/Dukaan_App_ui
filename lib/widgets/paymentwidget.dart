import 'package:flutter/material.dart';

class Paymentwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
      child: Container(
        height: 90,
        width: 300,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 8, right: 12),
                  child: Container(
                    height: 40,
                    width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: Image.asset(
                        "assets/image.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                          top: 5,
                        ),
                        child: Text("Order #1688068")),
                    Text("Jul 12, 02:06 PM"),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "₹799",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ),
                        Text("  Successful"),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 130, top: 10),
              child: Text("₹799 Deposited to 682006020000078"),
            ),
            Divider(
              thickness: 2,
            )
          ],
        ),
      ),
    );
  }
}
