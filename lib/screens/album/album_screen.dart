import 'package:expansion_card/expansion_card.dart';
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
              padding:  const EdgeInsets.only(top: 8, bottom: 40),
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
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              color: Colors.black87,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    FlatButton(
                      onPressed: null,
                      child: Icon(
                        Icons.skip_previous_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    SizedBox(width: 30,),
                    FlatButton(
                      onPressed: null,
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    SizedBox(width: 30,),
                    FlatButton(
                      onPressed: null,
                      child: Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.black87,
                child: ExpansionCard(
                  margin: EdgeInsets.only(top: 10, bottom: 10, right: 10,left: 10),
                  title: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Header",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "${album.artist}",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  children: <Widget>[
                    Container(
                       margin: EdgeInsets.symmetric(horizontal: 7),
                      child: Text("Content goes over here !",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
}
