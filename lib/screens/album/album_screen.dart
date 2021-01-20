import 'package:flutter/material.dart';
import 'package:pc/models/album.dart';

class AlbumScreen extends StatelessWidget {

  const AlbumScreen(this.album);

  final Album album;


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text('Ouça Agora'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Expanded(
                child: SizedBox(
                  height: 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: AspectRatio(
                    aspectRatio: 1,
                      child: Image.network(
                          album.image,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              'Album: ${album.name}',
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 13,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(top: 8),
            child: Text(
              'Artista: ${album.artist}',
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 13,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      )
    );
  }
}
