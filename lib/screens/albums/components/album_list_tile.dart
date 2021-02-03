import 'package:flutter/material.dart';
import 'package:pc/models/album.dart';

class AlbumListTile extends StatelessWidget {

  AlbumListTile(this.album);

  final Album album;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed('/album', arguments: album);
      },
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1)
        ),
        child: Container(
          height: 125,
          padding: const EdgeInsets.all(8),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(album.image),
                  ),
                ),
              ),
              const SizedBox(width: 16,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${album.music}',
                        style: TextStyle(
                            fontSize: 20,
                            color:  Colors.black87,
                            fontWeight: FontWeight.bold

                        ),
                      ),
                      Text(
                        '${album.artist}',
                        style: TextStyle(
                            fontSize: 14,
                            color:  Colors.black87,
                            fontWeight: FontWeight.normal

                        ),
                      ),

                      Text(
                        '${album.name}',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}