import 'package:flutter/material.dart';

class SectionLittle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.network('https://emc.acidadeon.com/dbimagens/jorge__790x505_16032018174433.jpg'),
                Image.network('https://emc.acidadeon.com/dbimagens/jorge__790x505_16032018174433.jpg'),
                Image.network('https://emc.acidadeon.com/dbimagens/jorge__790x505_16032018174433.jpg'),
                Image.network('https://emc.acidadeon.com/dbimagens/jorge__790x505_16032018174433.jpg'),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
