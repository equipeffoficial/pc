import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pc/common/custom_drawer/custom_drawer.dart';
import 'package:pc/screens/base/component/section_little.dart';


class HomeScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: CustomDrawer(),
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Container(
          child: ListView(
            children: [
              SectionLittle(),
            ],
          ),
      ),
    );
  }
}
