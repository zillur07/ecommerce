import 'package:ecommerce_app_project/src/components/categorieComponent.dart';
import 'package:ecommerce_app_project/src/components/productsComponent.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

var scaffoldKey = GlobalKey<ScaffoldState>();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(Icons.format_align_left),
        ),
        title: Row(
          children: [
            SizedBox(
              width: 90,
            ),
            Text(
              'X',
              style: TextStyle(
                fontSize: 25,
                color: HexColor('474EAE'),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'E',
              style: TextStyle(
                fontSize: 25,
                color: HexColor('A1DBF5'),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(EvaIcons.searchOutline),
          ),
        ],
      ),
      body: ListView(
        children: [
          CategorieComponet(),
          ProductsComponent(),
        ],
      ),
    );
  }
}
