import 'package:flutter/material.dart';
import 'package:pc/models/album.dart';
import 'package:pc/models/albums_manager.dart';
import 'package:pc/models/user_manager.dart';
import 'package:pc/screens/album/album_screen.dart';
import 'package:pc/screens/albums/albums_screen.dart';
import 'package:pc/screens/base/base_screen.dart';
import 'package:provider/provider.dart';
import 'models/user_manager.dart';
import 'screens/login/login_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserManager(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (_) => AlbumsManager(),
          lazy: false,
        )
      ],
      child: MaterialApp(
        title: 'Policia Civil',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          primaryColor: Colors.black,
          //scaffoldBackgroundColor: Colors.grey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        onGenerateRoute: (settings){
          switch(settings.name){
            case '/login':
              return MaterialPageRoute(
                  builder: (_) => LoginScreen()
              );

            case '/albums':
              return MaterialPageRoute(
                  builder: (_) => AlbumsScreen()
              );
            case '/album':
              return MaterialPageRoute(
                  builder: (_) => AlbumScreen(
                      settings.arguments as Album
                  ),
              );

            case '/':
            default:
              return MaterialPageRoute(
                  builder: (_) => BaseScreen()
              );
          }
        },
      ),

    );
  }
}