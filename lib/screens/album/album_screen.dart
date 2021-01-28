
import 'package:flutter/material.dart';
import 'package:pc/models/album.dart';
import 'package:pc/screens/album/components/card_info_widget.dart';
import 'package:pc/screens/album/components/card_player_widget.dart';

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
              padding:  const EdgeInsets.only(top: 8, bottom: 10),
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
            CardInfoWidget(album),
            SizedBox(height: 20,),
            CardPlayerWidget(),
          ],
        ),
    );
  }
}
