

import 'package:cloud_firestore/cloud_firestore.dart';

class AlbumsManager {

  AlbumsManager(){
    _loadAllAlbums();
  }

  final Firestore firestore = Firestore.instance;

  Future<void> _loadAllAlbums() async {
    final QuerySnapshot snapAlbums =
    await firestore.collection('albums').getDocuments();

    for(DocumentSnapshot doc in snapAlbums.documents){
      print(doc.data);
    }
  }

}