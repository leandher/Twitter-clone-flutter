import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class Home extends StatefulWidget {
  final List<Widget> screens;

  const Home({Key key, this.screens}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  Widget currentScreen;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(
          EvaIcons.twitter,
          color: Theme.of(context).primaryColor,
          size: 35,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      drawer: Drawer(),
      body: IndexedStack(
        index: _currentIndex,
        children: widget.screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        selectedIconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        unselectedIconTheme:
            IconThemeData(color: Theme.of(context).accentColor),
        iconSize: 30,
        items: [
          BottomNavigationBarItem(title: Text(''), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text(''), icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              title: Text(''), icon: Icon(Icons.notifications)),
          BottomNavigationBarItem(title: Text(''), icon: Icon(Icons.mail)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.add_comment,
          color: Colors.white,
        ),
      ),
    );
  }
}
