import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:pc/models/album.dart';

class AlbumsManager extends ChangeNotifier {
  AlbumsManager() {
    _loadAllAlbums();
  }

  final Firestore firestore = Firestore.instance;

  List<Album> allAlbums = [];

  String _search = '';

  String get search => _search;

  set search(String value) {
    _search = value;
    notifyListeners();
  }

  List<Album> get filteredAlbums {
    final List<Album> filteredAlbums = [];

    if (search.isEmpty) {
      filteredAlbums.addAll(allAlbums);
    } else {
      filteredAlbums.addAll(
        allAlbums.where((p) =>
        p.name.toLowerCase().contains(search.toLowerCase()) ||
            p.artist.toLowerCase().contains(search.toLowerCase()) ||
            p.description.toLowerCase().contains(search.toLowerCase())
        ) ,
      );
    }

    return filteredAlbums;
  }

  Future<void> _loadAllAlbums() async {
    final QuerySnapshot snapAlbums =
    await firestore.collection('albums').getDocuments();

    allAlbums = snapAlbums.documents.map((e) => Album.fromDocument(e)).toList();

    notifyListeners();
  }
}
