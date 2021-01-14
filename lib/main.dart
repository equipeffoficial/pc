import 'package:flutter/material.dart';
import 'package:pc/models/user_manager.dart';
import 'package:pc/screens/base/base_screen.dart';
import 'package:provider/provider.dart';

import 'screens/login/login_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserManager(),
      lazy: false,
      child: MaterialApp(
        title: 'Policia Civil',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color.fromARGB(255, 0, 0, 180),
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
