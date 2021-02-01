import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pc/common/custom_drawer/custom_drawer.dart';
import 'package:pc/screens/base/component/section_banner.dart';
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
              SizedBox(height: 10,),
              Padding(
                  padding: EdgeInsets.only(left: 20, top: 10,),
                  child: Text('Artistas', style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),)),
              SectionLittle(),
              SizedBox(height: 20,),
              SectionBanner(),
            ],
          ),
      ),
    );
  }
}
