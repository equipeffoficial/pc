import 'package:flutter/material.dart';

class SectionLittle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 110,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ClipOval(
                    child: Image.asset(
                        'asserts/images/gusttavo.jpg'
                    ),
                ),
                SizedBox(width: 15,),
                ClipOval(
                  child: Image.asset(
                      'asserts/images/henrique.jpg'
                  ),
                ),
                SizedBox(width: 15,),
                ClipOval(
                  child: Image.asset(
                      'asserts/images/jorge.jpg'
                  ),
                ),
                SizedBox(width: 15,),
                ClipOval(
                  child: Image.asset(
                      'asserts/images/maiara.jpg'
                  ),
                ),
                SizedBox(width: 15,),
                ClipOval(
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
