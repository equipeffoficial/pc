import 'package:flutter/material.dart';
import 'package:pc/common/custom_drawer/drawer_title.dart';


class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerTile(
            iconData: Icons.home,
            title: 'Início',
            page: 0,
          ),
        ],
      ),
    );
  }
}
