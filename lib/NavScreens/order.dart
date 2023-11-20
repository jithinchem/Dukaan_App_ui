import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Center(
          child: Padding(
              padding: EdgeInsets.only(right: 15),
              child: Text("Order #1688068  ")),
        ),
      ),
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Container(
                height: 40,
                width: 410,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "May 31, 05:42 PM",
                      style: TextStyle(fontSize: 18),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Delivered",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(right: 10, left: 14),
              child: Container(
                height: 40,
                width: 410,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "1 ITEM",
                      style: TextStyle(fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 1),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.assignment_outlined,
                              color: Colors.blueAccent,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "RECEIPT",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.blueAccent),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 14),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 90,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/image.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Explore | Men | Navy Blue",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Container(
                            child: Text(
                              "1 Peice",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Container(
                            child: Text(
                              "Size XL",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Container(
                            child: Text(
                              "1 x ₹799",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Item Total", style: TextStyle(fontSize: 17)),
                      Text("₹799", style: TextStyle(fontSize: 17))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery", style: TextStyle(fontSize: 17)),
                      Text("Free", style: TextStyle(fontSize: 17))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Grand Total",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                        Text("₹799",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "CUSTOMER DETAILS",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 1),
                        child: Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.share,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "SHARE",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 53, bottom: 5),
                              child:
                                  Text("Deepa", style: TextStyle(fontSize: 20)),
                            ),
                            Text("+91-7829000484",
                                style: TextStyle(fontSize: 15))
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Icon(Icons.phone)),
                            Icon(Icons.phone_android)
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(right: 100, top: 15),
                              child: Text(
                                "Address",
                                style: TextStyle(fontSize: 20),
                              )),
                          Text("D 1101 Charterd Beverly   ",
                              style: TextStyle(fontSize: 15)),
                          Text("Hills, Subramanyapura P.O",
                              style: TextStyle(fontSize: 15))
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("City", style: TextStyle(fontSize: 20)),
                            Text("Banglore", style: TextStyle(fontSize: 17))
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 150),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Pincode", style: TextStyle(fontSize: 20)),
                              Text("560061", style: TextStyle(fontSize: 17))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Payment",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text("Online", style: TextStyle(fontSize: 17))
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 219, 218, 218),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: EdgeInsets.only(left: 17, top: 7),
                            child: Text(
                              "PAID",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.green),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(right: 180),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Additional Information",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "State",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Text("Karnataka", style: TextStyle(fontSize: 17)),
                        Padding(
                          padding: EdgeInsets.only(top: 13),
                          child: Text(
                            "Email",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Text("greeniceaqua@gmail.com",
                            style: TextStyle(fontSize: 16))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 3),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 130, top: 17),
                        child: Text(
                          "Share Receipt",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
