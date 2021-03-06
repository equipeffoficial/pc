import 'package:flutter/material.dart';
import 'package:pc/models/page_manager.dart';
import 'package:pc/screens/albums/albums_screen.dart';
import 'package:pc/screens/base/home_screen.dart';
import 'package:provider/provider.dart';


class BaseScreen extends StatelessWidget {

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PageManager(pageController),
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          HomeScreen() ,
          AlbumsScreen(),
        ],
      ),
    );
  }
}