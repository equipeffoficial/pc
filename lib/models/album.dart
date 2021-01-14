


import 'package:cloud_firestore/cloud_firestore.dart';

class Album{

  Album.fromDocument(DocumentSnapshot document){
    name = document['name'] as String;
    description = document['description'] as String;
    image = document['image'] as String;
  }

  String name;
  String description;
  String image;


}