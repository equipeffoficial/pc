import 'package:flutter/material.dart';
import 'package:pc/screens/album/components/slider_widget.dart';


class CardPlayerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Colors.black87,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)
          )
        ),
        child: Column(
          children: [
            SliderWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                FlatButton(
                  onPressed: null,
                  child: Icon(
                    Icons.skip_previous_rounded,
                    color: Colors.white60,
                    size: 50,
                  ),
                ),
                SizedBox(width: 30,),
                FlatButton(
                  onPressed: null,
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white60,
                    size: 50,
                  ),
                ),
                SizedBox(width: 30,),
                FlatButton(
                  onPressed: null,
                  child: Icon(
                    Icons.skip_next,
                    color: Colors.white60,
                    size: 50,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
