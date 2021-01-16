

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:pc/models/album.dart';

class AlbumsManager extends ChangeNotifier {

  AlbumsManager(){
    _loadAllAlbums();
  }

  final Firestore firestore = Firestore.instance;

  List<Album> allAlbums = [];

  String _search = '';

  String get search => _search;
  set search(String value){
    _search = value;
    notifyListeners();
  }

  Future<void> _loadAllAlbums() async {
    final QuerySnapshot snapAlbums =
    await firestore.collection('albums').getDocuments();

    allAlbums = snapAlbums.documents.map(
            (e) => Album.fromDocument(e)).toList();

      notifyListeners();
  }

}