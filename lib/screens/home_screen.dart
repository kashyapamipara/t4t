import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(
          Icons.image,
          color: Colors.black,
          size: 35,
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.list),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
      ),
      endDrawer: Drawer(

        elevation: 10.0,
        child: ListView(
          children: <Widget>[
            //Here you place your menu items
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home Page', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Here you can give your route to navigate

              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Here you can give your route to navigate

              },
            ),
            ListTile(
              leading: Icon(Icons.close),
              title: Text('Close Drawer', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Here you can give your route to navigate
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: 20,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SHARE US:',
                style: TextStyle(color: Colors.white, fontSize: 25),
              )
            ],
          ),
        ),
      ),
    );
  }
}
