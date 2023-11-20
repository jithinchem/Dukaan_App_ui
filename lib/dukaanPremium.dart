import 'package:flutter/material.dart';
import 'package:ui_design/manageStore.dart';
import 'package:ui_design/widgets/premium1.dart';
import 'package:ui_design/widgets/premium2.dart';

class DukaanPremium extends StatelessWidget {
  const DukaanPremium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                child: AppBar(
                  leading: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 40,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ManageStoreScreen()),
                      );
                    },
                  ),
                  title: Center(
                    child: Padding(
                      padding: EdgeInsets.only(right: 50),
                      child: Text(
                        "Dukaan Premium",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 90, left: 13, right: 13, bottom: 80),
                child: Container(
                  height: 160,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 100, top: 15),
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 27, right: 7),
                                child: CircleAvatar(child: Icon(Icons.shop))),
                            Text(
                              "dukaan",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28),
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Get Dukaan Premium for Just ",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text("₹4999/Year", style: TextStyle(fontSize: 20))
                        ],
                      ),
                      Column(
                        children: [
                          Text("All the advanced features for scailing your"),
                          Text("bussiness"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 240,
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 35),
                            child: Text(
                              "Features",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Premium1(
                          iconData: Icon(Icons.public),
                          FirstText: "Custom domain name",
                          SecondText: "Get your own custom domain and build",
                          ThirdText: "Your brand on the Internet"),
                      Premium1(
                          iconData: Icon(Icons.check_box_outlined),
                          FirstText: "Verified seller Badge",
                          SecondText: "Get green verified Badge under your",
                          ThirdText: "store name and build trust"),
                      Premium1(
                          iconData: Icon(Icons.laptop_mac),
                          FirstText: "Dukaan for PC",
                          SecondText: "Access all the exclusive premium",
                          ThirdText: "features on Dukaan for pc"),
                      Premium1(
                          iconData: Icon(Icons.headset_mic_rounded),
                          FirstText: "Priority support",
                          SecondText: "Get your question resolved with our",
                          ThirdText: "priority customer support"),
                      Divider(
                        thickness: 4,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 160),
                            child: Text(
                              "What is Dukaan Premium?",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5, bottom: 10),
                            child: Container(
                              height: 200,
                              width: 370,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.blueAccent),
                            ),
                          ),
                          Divider(
                            thickness: 4,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 140),
                                  child: Text(
                                    "Frequently asked questions",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 24, top: 10, right: 20),
                                  child: Row(children: [
                                    Text(
                                      "What type of bussiness can use dukaan \npremium?",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Spacer(),
                                    Icon(Icons.minimize)
                                  ]),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10, top: 10),
                                  child: Text(
                                    "Dukaan caters to a wide verity of sellers.Be it a \nsmall Grocery store or a big Legacy brand- anyone \nwho wants to sell their products/service online -\nDukaan is the perfect platform for you.",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Divider(thickness: 3),
                                Premium2(text: "What is your Refund Policy?"),
                                Divider(),
                                Premium2(
                                    text:
                                        "Will there be an automatic charge after the\npaid trial"),
                                Divider(),
                                Premium2(
                                    text: "What payment method do you offer?"),
                                Divider(),
                                Premium2(
                                    text:
                                        "What happens when my free trial ends?"),
                                Divider(),
                                Premium2(
                                    text:
                                        "What are the terms of the custom domain?"),
                                Divider(
                                  thickness: 3,
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 170),
                                  child: Text(
                                    "Need help? Get in touch",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          border: Border.all(
                                              color: Colors.grey, width: 2),
                                        ),
                                        height: 120,
                                        width: 170,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Column(
                                            children: [
                                              Icon(
                                                Icons.chat_bubble_outline,
                                                size: 50,
                                              ),
                                              Text(
                                                "Live Chat",
                                                style: TextStyle(fontSize: 19),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          border: Border.all(
                                              color: Colors.grey, width: 2),
                                        ),
                                        height: 120,
                                        width: 170,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Column(
                                            children: [
                                              Icon(
                                                Icons.call,
                                                size: 50,
                                              ),
                                              Text(
                                                "Phone Call",
                                                style: TextStyle(fontSize: 18),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  thickness: 4,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Select Domain",
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 230,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        color: Colors.blueAccent,
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(left: 60, top: 15),
                                        child: Text(
                                          "Get Premium",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Divider()
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
