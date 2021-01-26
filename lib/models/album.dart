import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pc/models/music.dart';

class Album{

  Album.fromDocument(DocumentSnapshot document){
    id = document.documentID;
    name = document['name'] as String;
    description = document['description'] as String;
    image = document['image'] as String;
    artist = document['artist'] as String;
    musics = (document.data['musics'] as List<dynamic> ?? []).map(
            (m) => Music.formMap(m as Map<String, dynamic>)).toList();

    print(musics);


  }

  String id;
  String name;
  String description;
  String image;
  String artist;
  List<Music> musics;



}