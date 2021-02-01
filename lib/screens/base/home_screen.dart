import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pc/common/custom_drawer/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: CustomDrawer(),
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 190,
                width: double.infinity,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                  children: [
                    
                  ],
                ),
            ),
          ],
        ),

      ),
    );
  }
}
