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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
            child: Text(
              '${album.name}',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(top: 8, right: 20, left: 20, bottom: 25),
            child: Text(
              '${album.description}',
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 12,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Center(
            child: ClipRRect(   
            borderRadius: BorderRadius.circular(20),
              child: Image.network(
                  album.image,
                height: 280,
                width: 280,
              ),
            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(top: 10, right: 50, left: 20),
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
