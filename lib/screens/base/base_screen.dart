import 'package:flutter/material.dart';
import 'package:pc/models/page_manager.dart';
import 'package:pc/screens/base/search_dialog.dart';
import 'package:provider/provider.dart';

import '../../common/custom_drawer/custom_drawer.dart';

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
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: const Text('Inicio'),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: (){
                    showDialog(context: context, builder: (_) => SearchDialog());
                  },
                )
              ],
            ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: ()  {
              showDialog(context: context, builder: (_) => SearchDialog());
              },
            label: Text('Pesquisar'),
            icon: Icon(Icons.audiotrack),
            backgroundColor: Theme.of(context).primaryColor,
          ) ,
          ),

        ],
      ),
    );
  }
}
