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
        title: Consumer<AlbumsManager>(
          builder: (_, albumsManager, __){
            if(albumsManager.search.isEmpty){
              return const Text('Produtos');
            } else {
              return LayoutBuilder(
                builder: (_, constraints){
                  return GestureDetector(
                    onTap: () async {
                      final search = await showDialog<String>(context: context,
                          builder: (_) => SearchDialog(albumsManager.search));
                      if(search != null){
                        albumsManager.search = search;
                      }
                    },
                    child: Container(
                        width: constraints.biggest.width,
                        child: Text(
                          albumsManager.search,
                          textAlign: TextAlign.center,
                        )
                    ),
                  );
                },
              );
            }
          },
        ),
        centerTitle: true,
        actions: <Widget>[
          Consumer<AlbumsManager>(
              builder: (_, albumsManager, __){
                if(albumsManager.search.isEmpty){
                  return IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () async {
                      final search = await showDialog<String>(context: context,
                          builder: (_) => SearchDialog(albumsManager.search));
                      if(search != null){
                        albumsManager.search = search;
                      }
                    },
                  );
                } else {
                  return IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () async {
                      albumsManager.search = '';
                    },
                  );
            }
          })
        ],
      ),
      body: Consumer<AlbumsManager>(
        builder: (_, albumManager, __) {
          final filteredAlbums = albumManager.filteredAlbums;
          return ListView.builder(
              padding: const EdgeInsets.all(4),
              itemCount: filteredAlbums.length,
              itemBuilder: (_, index) {
                return AlbumListTile(filteredAlbums[index]);
              });
        },
      ),
    );
  }
}
