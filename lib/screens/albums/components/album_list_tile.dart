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
            borderRadius: BorderRadius.circular(4)
        ),
        child: Container(
          height: 125,
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
                      'Album: ${album.name}',
                      style: TextStyle(
                        fontSize: 16,
                        color:  Colors.grey[600]
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 0.5),
                      child: Text(
                        'Artista: ${album.artist}',
                        style: TextStyle(
                          color: Colors.grey[600],
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
      ),
    );
  }
}