import 'package:flutter/material.dart';
import 'package:ui_design/manageStore.dart';

class AdditionalInformation extends StatefulWidget {
  const AdditionalInformation({super.key});

  @override
  State<AdditionalInformation> createState() => _AdditionalInformationState();
}

class _AdditionalInformationState extends State<AdditionalInformation> {
  bool value = true;
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ManageStoreScreen()),
              );
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Additional Information"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                child: Icon(Icons.share, size: 35),
              ),
              SizedBox(width: 10),
              Text("Share Dukaan App", style: TextStyle(fontSize: 20)),
              Spacer(),
              Icon(Icons.chevron_right, size: 40)
            ],
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                child: Icon(Icons.announcement_outlined, size: 35),
              ),
              SizedBox(width: 10),
              Text("Change Language", style: TextStyle(fontSize: 20)),
              Spacer(),
              Icon(Icons.chevron_right, size: 40)
            ],
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                child: Icon(Icons.facebook_rounded, size: 35),
              ),
              SizedBox(width: 10),
              Text("Facebook Chat Support", style: TextStyle(fontSize: 20)),
              Spacer(),
              Switch(
                value: isSelected,
                onChanged: (value) {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                activeColor: Colors.blueAccent,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                child: Icon(Icons.lock, size: 35),
              ),
              SizedBox(width: 10),
              Text("Privacy Policy", style: TextStyle(fontSize: 20)),
            ],
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                child: Icon(Icons.star, size: 35),
              ),
              SizedBox(width: 10),
              Text("Rate Us", style: TextStyle(fontSize: 20)),
            ],
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                child: Icon(Icons.logout, size: 35),
              ),
              SizedBox(width: 10),
              Text("Sign Out", style: TextStyle(fontSize: 20)),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 400),
            child: Column(
              children: [
                Text(
                  "Version",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                ),
                Text("2.4.2",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100))
              ],
            ),
          )
        ],
      ),
    );
  }
}
