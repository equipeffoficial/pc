import 'package:flutter/material.dart';
import 'package:pc/models/album.dart';

class AlbumListTile extends StatelessWidget {

  AlbumListTile(this.album);

  final Album album;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)
      ),
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(8),
        child: Row(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1,
              child: Image.network(album.image),
            ),
            const SizedBox(width: 16,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    album.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      'A partir de',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 12,
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}