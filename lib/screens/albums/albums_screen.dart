import 'package:flutter/material.dart';
import 'package:pc/models/albums_manager.dart';
import 'package:pc/screens/base/search_dialog.dart';
import 'package:provider/provider.dart';

import '../../common/custom_drawer/custom_drawer.dart';
import 'components/album_list_tile.dart';


class AlbumsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: const Text('Ouça Agora'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
             final search = await showDialog(context: context, builder: (_) => SearchDialog());
             if(search != null){
               context.read<AlbumsManager>().search = search;
             }
            },
          )
        ],
      ),
      body: Consumer<AlbumsManager>(
        builder: (_, albumManager, __){
          final filteredAlbums = albumManager.filteredAlbums;
          return ListView.builder(
              padding: const EdgeInsets.all(4),
              itemCount: filteredAlbums.length,
              itemBuilder: (_, index){
                return AlbumListTile(filteredAlbums[index]);
              }
          );
        },
      ),
    );
  }
}