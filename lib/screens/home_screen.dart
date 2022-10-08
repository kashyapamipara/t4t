import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int index = 0;
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
              tileColor: Colors.grey,
              leading: Icon(Icons.home),
              title: Text('Home', style: TextStyle(fontSize: 18,color: index==0?Colors.blue:Colors.pink)),
              focusColor: Colors.blue,
              onTap: () {
                setState(() {
                  index = 0;
                });
                // Here you can give your route to navigate
              },
            ),

            ListTile(
              tileColor: Colors.grey,
              leading: Icon(Icons.grid_view_sharp),
              title: Text('Categories', style: TextStyle(fontSize: 18, color: index==1?Colors.blue:Colors.pink)),
              onTap: () {
                setState(() {
                  index = 1;
                });
                // Here you can give your route to navigate
              },
            ),
            ListTile(
              tileColor: Colors.grey[100],
              leading: Icon(Icons.search),
              title: Text('Search', style: TextStyle(fontSize: 18,color: index==2?Colors.blue:Colors.pink)),
              onTap: () {
                setState(() {
                  index = 2;
                });
                // Here you can give your route to navigate
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              tileColor: Colors.grey,
              leading: Icon(Icons.app_registration),
              title: Text('Register with us', style: TextStyle(fontSize: 18,color: index==3?Colors.blue:Colors.pink)),
              onTap: () {
                setState(() {
                  index = 3;
                });
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
