import 'package:flutter/material.dart';

class Track extends StatelessWidget {
  final List music = [
    "With You",
    "Next To Me",
    "Inception (feat. 1ho and chan",
    "Anoko Secret",
    "Last Dance",
    "Sunshine",
    "Dramatic Slow Motion",
    "Chocolatte Passion",
    "Pholaroid Love",
    "Like Flames"
  ];

  final List armusic = [
    "Mokita",
    "bear bear and friends, Gillchang",
    "airman,1ho, chan",
    "Eve",
    "Eve",
    "Anth, Conor Maynard",
    "TK from 凛として時雨",
    "凛として時雨",
    "ENHYPEN",
    "MindaRyn"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(music[index], style: TextStyle(fontSize: 15)),
            subtitle: Text(armusic[index]),
            leading: Container(
              child: Image.network("https://cdn.pixabay.com/photo/2022/03/08/03/57/mp3-7054985__340.png"),
            ),
          ),
        );
      },
      itemCount: music.length,
    );
  }
}
