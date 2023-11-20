import 'package:flutter/material.dart';

class Productswidget extends StatelessWidget {
  const Productswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        products(context),
        products(context),
        products(context),
        products(context),
        products(context),
        products(context),
        products(context),
        products(context),
      ],
    );
  }

  products(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 6),
      child: Container(
        height: 170,
        width: 200,
        child: Card(
          child: Padding(
            padding: EdgeInsets.only(left: 8, top: 7),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  width: 90,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/image.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Couch Potatto | Women...",
                          style: TextStyle(fontSize: 17)),
                      Text("1 Peice", style: TextStyle(fontSize: 13)),
                      Text(
                        "₹799",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "In Stock",
                        style: TextStyle(color: Colors.green),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, top: 40, bottom: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.share),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Share Product",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 15, top: 7),
                        child: Icon(Icons.more_vert)),
                    Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Colors.blueAccent,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
