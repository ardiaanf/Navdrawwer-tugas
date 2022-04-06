import 'package:flutter/material.dart';
import 'package:tes/sidebar.dart';
import 'package:tes/pages/playlist.dart';
import 'package:tes/pages/album.dart';
import 'package:tes/pages/track.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        drawer: MyDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                toolbarHeight: 100,
                pinned: true,
                expandedHeight: 150,
                backgroundColor: Colors.orangeAccent,
                title: const Text(
                  'MP3 APP',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23, color: Colors.white),
                ),
                centerTitle: true,
                bottom: const PreferredSize(
                  child: TabBar(
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(icon: Icon(Icons.bar_chart_outlined), text: "Track"),
                      Tab(icon: Icon(Icons.class__rounded), text: "Album"),
                      Tab(icon: Icon(Icons.short_text_outlined), text: "Playlist"),
                    ],
                  ),
                  preferredSize: Size.fromHeight(0),
                ),
              )
            ];
          },
          body: TabBarView(
            children: <Widget>[
              Track(),
              Album(),
              Playlist()
            ],
          ),
        ),
      ),
    );
  }
}
