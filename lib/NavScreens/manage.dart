import 'package:flutter/material.dart';
import 'package:ui_design/Pages/payments.dart';
import 'package:ui_design/dukaanPremium.dart';

class Manage extends StatelessWidget {
  Widget cards(
      {required String firstText,
      required String secondtext,
      required Icon newIcon,
      required Color iconcontainer,
      required Color newContainer,
      required String NewText,
      required Color newTextColor,
      required Function() navigate}) {
    return Container(
      height: 100,
      width: 200,
      child: InkWell(
        onTap: navigate,
        child: Card(
          child: Padding(
            padding: EdgeInsets.only(left: 10, top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: iconcontainer,
                    ),
                    height: 35,
                    width: 35,
                    child: newIcon,
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Container(
                      height: 20,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: newContainer),
                      child: Padding(
                          padding: EdgeInsets.only(left: 5, top: 2),
                          child: Text(
                            NewText,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: newTextColor),
                          )),
                    ),
                  )
                ]),
                Padding(
                  padding: EdgeInsets.only(top: 3),
                  child: Text(
                    firstText,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  secondtext,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(right: 40),
            child: Text("Manage Store"),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            mainAxisExtent: 120,
          ),
          children: [
            cards(
                navigate: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => DukaanPremium()));
                },
                newContainer: Colors.white,
                newTextColor: Colors.white,
                NewText: "NEW",
                firstText: "Marketing",
                secondtext: "Designs",
                newIcon: Icon(
                  Icons.speaker_group_rounded,
                  color: Colors.white,
                ),
                iconcontainer: Color.fromARGB(255, 232, 173, 84)),
            cards(
                navigate: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => Payments()));
                },
                newContainer: Colors.white,
                newTextColor: Colors.white,
                NewText: "NEW",
                firstText: "Online",
                secondtext: "Payments",
                newIcon: Icon(
                  Icons.attach_money_sharp,
                  color: Colors.white,
                ),
                iconcontainer: Color.fromARGB(255, 93, 200, 105)),
            cards(
                navigate: () {},
                newContainer: Colors.white,
                newTextColor: Colors.white,
                NewText: "NEW",
                firstText: "Discount",
                secondtext: "Coupons",
                newIcon: Icon(
                  Icons.percent_sharp,
                  color: Colors.white,
                ),
                iconcontainer: Color.fromARGB(255, 224, 169, 102)),
            cards(
                navigate: () {},
                newContainer: Colors.white,
                newTextColor: Colors.white,
                NewText: "NEW",
                firstText: "My",
                secondtext: "Customers",
                newIcon: Icon(
                  Icons.group,
                  color: Colors.white,
                ),
                iconcontainer: Color.fromARGB(255, 61, 162, 212)),
            cards(
                navigate: () {},
                newContainer: Colors.white,
                newTextColor: Colors.white,
                NewText: "NEW",
                firstText: "Store QR",
                secondtext: "Code",
                newIcon: Icon(
                  Icons.qr_code,
                  color: Colors.white,
                ),
                iconcontainer: Colors.grey),
            cards(
                navigate: () {},
                newContainer: Colors.white,
                newTextColor: Colors.white,
                NewText: "NEW",
                firstText: "Extra",
                secondtext: "Charges",
                newIcon: Icon(
                  Icons.currency_rupee,
                  color: Colors.white,
                ),
                iconcontainer: Color.fromARGB(255, 152, 33, 243)),
            cards(
                navigate: () {},
                newContainer: Colors.green,
                newTextColor: Colors.white,
                NewText: "NEW",
                firstText: "Order",
                secondtext: "Form",
                newIcon: Icon(
                  Icons.format_align_justify,
                  color: Colors.white,
                ),
                iconcontainer: Color.fromARGB(255, 230, 71, 225)),
          ],
        ),
      ),
    );
  }
}
