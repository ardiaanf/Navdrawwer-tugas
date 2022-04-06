import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Album extends StatelessWidget {
  final List almusic = [
    "AudioTrim",
    "Download",
    "Watshapp Audio",
    "Data",
    "Music"
  ];

  final List track = [
    "1",
    "5",
    "20",
    "10",
    "25"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text("Unknown | Track " + track[index],
                style: TextStyle(
                  fontSize: 15,
                )),
            subtitle: Text(
              almusic[index],
              style: TextStyle(color: Colors.grey),
            ),
            leading: Container(
              child: Image.network("https://cdn.pixabay.com/photo/2016/05/24/22/54/icon-1413583__340.png"),
            ),
          ),
        );
      },
      itemCount: almusic.length,
    );
  }
}
