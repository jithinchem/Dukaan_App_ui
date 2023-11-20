import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ui_design/widgets/paymentwidget.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  double _initial = 0;
  void update() {
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        _initial = _initial + 1;
      });
    });
  }

  Widget _limitIndicator() {
    String value = (_initial * 50000).toString()[0];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 5, top: 5),
          child: LinearProgressIndicator(
            minHeight: 10.0,
            value: _initial,
            backgroundColor: Color.fromARGB(255, 204, 202, 202),
            valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 7, right: 195),
            child: Text(
              "36,668 left out of ₹50,000",
              style: TextStyle(fontSize: 15),
            )),
        Padding(
            padding: EdgeInsets.only(right: 246, top: 10),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _initial = _initial + 0.1;
                  });
                },
                child: Text("Increase Limit")))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Payment"),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 13, right: 13, top: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(179, 253, 253, 253),
                border: Border.all(
                    width: 3, color: Color.fromARGB(255, 205, 205, 205)),
              ),
              height: 190,
              child: Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Transaction Limit",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                    Text("A Free Limit Up To Which Tou Recive",
                        style: TextStyle(fontSize: 17)),
                    Text("The Online Payments Directly in your Bank",
                        style: TextStyle(fontSize: 17)),
                    Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: _limitIndicator()),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8, left: 13, top: 5),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Default Method", style: TextStyle(fontSize: 18)),
                      Spacer(),
                      Text(
                        "Online Payments",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                      Icon(Icons.chevron_right, size: 30)
                    ],
                  ),
                  Row(
                    children: [
                      Text("Payment Profile", style: TextStyle(fontSize: 18)),
                      Spacer(),
                      Text(
                        "Bank Accounts",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                      Icon(Icons.chevron_right, size: 30),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Text("Payments Overview", style: TextStyle(fontSize: 18)),
                      Spacer(),
                      Text(
                        "Life Time",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                      Icon(Icons.chevron_right, size: 30),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Container(
                            height: 100,
                            width: 180,
                            color: Colors.orange,
                            child: Padding(
                              padding: EdgeInsets.only(left: 15, top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Amount On Hold",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                  Text(
                                    "₹0",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Container(
                            height: 100,
                            width: 180,
                            color: Colors.green,
                            child: Padding(
                              padding: EdgeInsets.only(left: 15, top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Amount Recieved",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                  Text(
                                    "₹13,332",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7, right: 290),
                    child: Text(
                      "Transaction",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 110,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  backgroundColor: Colors.grey[400]),
                              onPressed: () {},
                              child: Text(
                                "On old",
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: 130,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              onPressed: () {},
                              child: Text("Payouts (15)"),
                            ),
                          ),
                          SizedBox(
                            width: 110,
                            height: 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  backgroundColor: Colors.grey[400]),
                              onPressed: () {},
                              child: Text(
                                "Refunds",
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Paymentwidget(),
          Paymentwidget(),
          Paymentwidget(),
          Paymentwidget(),
          Paymentwidget(),
          Paymentwidget(),
          Paymentwidget(),
          Paymentwidget(),
          Paymentwidget(),
          Paymentwidget()
        ],
      ),
    );
  }
}
