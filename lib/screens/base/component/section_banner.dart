import 'package:flutter/material.dart';

class SectionBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 180,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ClipRRect(
                  child: Image.asset(
                      'asserts/images/gusttavo.jpg'
                  ),
                ),
                SizedBox(width: 15,),
                ClipRRect(
                  child: Image.asset(
                      'asserts/images/henrique.jpg'
                  ),
                ),
                SizedBox(width: 15,),
                ClipRRect(
                  child: Image.asset(
                      'asserts/images/jorge.jpg'
                  ),
                ),
                SizedBox(width: 15,),
                ClipRRect(
                  child: Image.asset(
                      'asserts/images/maiara.jpg'
                  ),
                ),
                SizedBox(width: 15,),
                ClipRRect(
                  child: Image.asset(
                      'asserts/images/marilia.jpg'
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
