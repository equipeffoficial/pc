import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pc/models/album.dart';

class CardInfoWidget extends StatelessWidget {

  const CardInfoWidget(this.album);

  final Album album;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, top: 15, bottom: 10),
            child: Center(
              child: ExpansionCard(
                margin: const EdgeInsets.all(12),
                borderRadius: 20,
               background: Image.asset(
                  "asserts/images/banner.jpg",
                  fit: BoxFit.cover,
                ),
                title: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Detalhes do Album",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                         // fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "Clique aqui ...",
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("${album.description}",
                        style: TextStyle(fontSize: 17, color: Colors.white70)),
                  )
                ],
              )),
    );
  }
}