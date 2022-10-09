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
              tileColor:
                  index == 0 ? Colors.grey.withOpacity(0.3) : Colors.white,
              leading: Icon(Icons.home),
              title: Text('Home',
                  style: TextStyle(
                      fontSize: 18,
                      color: index == 0 ? Colors.blue : Colors.pink)),
              focusColor: Colors.blue,
              onTap: () {
                setState(() {
                  index = 0;
                  Navigator.of(context).pop();
                });
                // Here you can give your route to navigate
              },
            ),

            ListTile(
              tileColor:
                  index == 1 ? Colors.grey.withOpacity(0.3) : Colors.white,
              leading: Icon(Icons.grid_view_sharp),
              title: Text('Categories',
                  style: TextStyle(
                      fontSize: 18,
                      color: index == 1 ? Colors.blue : Colors.pink)),
              onTap: () {
                setState(() {
                  index = 1;
                  Navigator.of(context).pop();
                });
                // Here you can give your route to navigate
              },
            ),
            ListTile(
              tileColor:
                  index == 2 ? Colors.grey.withOpacity(0.3) : Colors.white,
              leading: Icon(Icons.search),
              title: Text('Search',
                  style: TextStyle(
                      fontSize: 18,
                      color: index == 2 ? Colors.blue : Colors.pink)),
              onTap: () {
                setState(() {
                  index = 2;
                  Navigator.of(context).pop();
                });
                // Here you can give your route to navigate
              },
            ),
            ListTile(
              tileColor:
                  index == 3 ? Colors.grey.withOpacity(0.3) : Colors.white,
              leading: Icon(Icons.app_registration),
              title: Text('Register with us',
                  style: TextStyle(
                      fontSize: 18,
                      color: index == 3 ? Colors.blue : Colors.pink)),
              onTap: () {
                setState(() {
                  index = 3;
                  Navigator.of(context).pop();
                });
                // Here you can give your route to navigate
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
      body: index == 0
          ? Container(
              child: Text('this is home screen'),
            )
          : (index == 1
              ? Container(
                  child: Text('this is categories screen'),
                )
              : (index == 2
                  ? Container(
                      child: Text('this is Search screen'),
                    )
                  : Container(padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Expanded(
                              child: Text(
                            'REGISTER FOR FREE!!',
                            style: TextStyle(fontSize: 35),
                          )),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Business Name',
                                  border: OutlineInputBorder()),
                              // The validator receives the text that the user has entered.
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: 'First Name',
                                            border: OutlineInputBorder()),
                                        // The validator receives the text that the user has entered.
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter First Name';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: 'Last Name',
                                            border: OutlineInputBorder()),
                                        // The validator receives the text that the user has entered.
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter Last name';
                                          }
                                          return null;
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Mobile Number:',
                                  border: OutlineInputBorder()),
                              // The validator receives the text that the user has entered.
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: 'Address',
                                  border: OutlineInputBorder()),
                              // The validator receives the text that the user has entered.
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () => {}, child: Text('Submit'))
                        ],
                      ),
                    ))),
    );
  }
}
