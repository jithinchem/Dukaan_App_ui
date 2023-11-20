import 'package:flutter/material.dart';
import 'package:ui_design/widgets/categorieswidget.dart';
import 'package:ui_design/widgets/productwidget.dart';

class Catalogue extends StatelessWidget {
  const Catalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Catalogue"),
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 21.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                )),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Products",
              ),
              Tab(
                text: "Categories",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [Productswidget(), Categorieswidget()]),
      ),
    );
  }
}
