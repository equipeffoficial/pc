import 'package:flutter/material.dart';

class SectionAlbum extends StatelessWidget {
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
                    aspectRatio: 1 / 1,
                    child: Image.asset(
                        'asserts/images/album1.jpg'
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Image.asset(
                        'asserts/images/album2.jpg'
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Image.asset(
                        'asserts/images/album3.jpg'
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Image.asset(
                        'asserts/images/album4.jpg'
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Image.asset(
                        'asserts/images/album5.jpg'
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Image.asset(
                        'asserts/images/album7.jpg'
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
