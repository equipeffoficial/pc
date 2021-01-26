import 'package:flutter/material.dart';
import 'package:pc/common/custom_drawer/custom_drawer_header.dart';
import 'package:pc/common/custom_drawer/drawer_title.dart';


class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          CustomDrawerHeader(),
          Divider(),
          DrawerTile(
            iconData: Icons.home,
            title: 'Inicio',
            page: 0,
          ),
          DrawerTile(
            iconData: Icons.queue_music,
            title: 'Ouvir agora',
            page: 1,
          ),
        ],
      ),
    );
  }
}