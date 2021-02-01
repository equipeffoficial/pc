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
                  borderRadius: BorderRadius.circular(15),
                  child: AspectRatio(
                    aspectRatio: 4 / 2,
                    child: Image.asset(
                        'asserts/images/banner1.jpg'
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: AspectRatio(
                    aspectRatio: 4 / 2,
                    child: Image.asset(
                        'asserts/images/banner2.jpg'
                    ),
                  ),
                ),
                SizedBox(width: 15,),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
