


import 'package:cloud_firestore/cloud_firestore.dart';

class Album{

  Album.fromDocument(DocumentSnapshot document){
    id = document.documentID;
    name = document['name'] as String;
    description = document['description'] as String;
    image = document['image'] as String;
    artist = document['artist'] as String;
    musics = List<String>.from(document.data['images'] as List<dynamic>);


  }

  String id;
  String name;
  String description;
  String image;
  String artist;
  List<String> musics;




}