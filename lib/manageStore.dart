import 'package:flutter/material.dart';
import 'package:ui_design/NavScreens/account.dart';
import 'package:ui_design/NavScreens/home.dart';
import 'package:ui_design/NavScreens/order.dart';
import 'package:ui_design/catalogue.dart';

import 'NavScreens/manage.dart';

class ManageStoreScreen extends StatefulWidget {
  const ManageStoreScreen({super.key});

  @override
  State<ManageStoreScreen> createState() => _ManageStoreScreenState();
}

class _ManageStoreScreenState extends State<ManageStoreScreen> {
  int index = 0;
  final Screens = [
    Home(),
    Order(),
    Catalogue(),
    Manage(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.blue,
            labelTextStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
        child: NavigationBar(
          height: 80,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(icon: Icon(Icons.home_filled), label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.currency_rupee), label: "Order"),
            NavigationDestination(
                icon: Icon(Icons.production_quantity_limits),
                label: "Products"),
            NavigationDestination(
                icon: Icon(Icons.manage_accounts_outlined), label: "Manage"),
            NavigationDestination(icon: Icon(Icons.man), label: "Account"),
          ],
        ),
      ),
    );
  }
}
