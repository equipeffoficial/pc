

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:pc/models/album.dart';

class AlbumsManager extends ChangeNotifier {

  AlbumsManager(){
    _loadAllAlbums();
  }

  final Firestore firestore = Firestore.instance;

  List<Album> _allAlbums = [];

  Future<void> _loadAllAlbums() async {
    final QuerySnapshot snapAlbums =
    await firestore.collection('albums').getDocuments();

    _allAlbums = snapAlbums.documents.map(
            (e) => Album.fromDocument(e)).toList();

      notifyListeners();
  }

}