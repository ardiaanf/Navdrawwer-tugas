import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.bar_chart_outlined,
              text: 'Track',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.class__rounded,
              text: 'Album',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pop(context);
              }),
          _drawerItem(
            icon: Icons.short_text_outlined,
            text: 'Playlist',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(2);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(color: Colors.orangeAccent),
      currentAccountPicture: ClipOval(
        child: Image(image: NetworkImage('https://media.istockphoto.com/photos/beautiful-red-kitten-picture-id1185851190?k=20&m=1185851190&s=612x612&w=0&h=JNQhTi9dMd0TPh7FJV3U2MI1fRIZoYfUTt8vBBkA4cI='), fit: BoxFit.cover),
      ),
      accountName: Text('Ardian Firdaus'),
      accountEmail: Text('ardiaanf@gmail.com'),
    );
  }

  Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
