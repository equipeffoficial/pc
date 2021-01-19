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
            child: Text(
              '${album.name}',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(top: 8, bottom: 25, right: 20, left: 20),
            child: Text(
              'Descrição: ${album.description}',
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
            padding:  const EdgeInsets.only(top: 10),
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
          SizedBox(height: 20,),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight:Radius.circular(30), topLeft: Radius.circular(30)),
                color: Colors.black87
              ),
            ),
          )
        ],
      )
    );
  }
}
