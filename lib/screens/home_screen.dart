import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int index = 0;
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 46, 49, 146),
        leading: Container(
          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Image.asset('assets/t4t.png'),
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
        color: Color.fromARGB(255, 46, 49, 146),
        height: 20,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SHARE US:',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),

            ],
          ),
        ),
      ),
      body: index == 0
          ? Container(
              child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      suffixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                      fillColor: Colors.grey.withOpacity(0.3),
                      hintText: 'Search Here...',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  child: Image.asset('assets/test.jpeg'),
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 3 / 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 1),
                      itemCount: 10,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(),
                          child: Image.asset(
                            'assets/download.jpg',
                            fit: BoxFit.cover,
                          ),
                        );
                      }),
                ),
              ],
            ))
          : (index == 1
              ? Container(
                  child: Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        suffixIcon: Icon(
                          Icons.search,
                          size: 25,
                        ),
                        fillColor: Colors.grey.withOpacity(0.3),
                        hintText: 'Search Here...',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                      decoration: BoxDecoration(
                        border: Border(top: BorderSide(), bottom: BorderSide()),
                        color: Colors.limeAccent,
                      ),
                      height: 25,
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        'All Categories',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 3 / 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 1),
                        itemCount: 10,
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(),
                            child: Image.asset(
                              'assets/download.jpg',
                              fit: BoxFit.cover,
                            ),
                          );
                        }),
                  ),
                ]))
              : (index == 2
                  ? SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: Column(

                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'SEARCH',
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding:EdgeInsets.only(right: MediaQuery.of(context).size.width/2.5),
                                 child: Text(
                                    'CITY :',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ),
                                Expanded(
                                  child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder()),
                                    // Initial Value
                                    value: dropdownvalue,
                                    // Down Arrow Icon
                                    icon: const Icon(
                                        Icons.keyboard_arrow_down),
                                    // Array list of items
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    // After selecting the desired option,it will
                                    // change button value to selected value
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding:EdgeInsets.only(right: MediaQuery.of(context).size.width/2.5),
                                  child: Text(
                                    'AREA :',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ),
                                Expanded(
                                  child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder()),
                                    // Initial Value
                                    value: dropdownvalue,
                                    // Down Arrow Icon
                                    icon: const Icon(
                                        Icons.keyboard_arrow_down),
                                    // Array list of items
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    // After selecting the desired option,it will
                                    // change button value to selected value
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding:EdgeInsets.only(right: MediaQuery.of(context).size.width/6),
                                  child: Text(
                                    'CATEGORIES :',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ),
                                Expanded(
                                  child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder()),
                                    // Initial Value
                                    value: dropdownvalue,
                                    // Down Arrow Icon
                                    icon: const Icon(
                                        Icons.keyboard_arrow_down),
                                    // Array list of items
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    // After selecting the desired option,it will
                                    // change button value to selected value
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),

SizedBox(height: 20,),
                          Padding(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding:EdgeInsets.only(right: MediaQuery.of(context).size.width/5),
                                  child: Text(
                                    'PIN CODE  :',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        labelText: 'Enter Pin code',
                                        border: OutlineInputBorder()),
                                    // The validator receives the text that the user has entered.
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          ElevatedButton(
                              onPressed: () => {}, child: Text('SHOW RESULT'))
                        ],
                      ),
                    ),
                  )
                  : SingleChildScrollView(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Column(

                          children: [
                            SizedBox(height: 10,),
                            Text(
                              'REGISTER FOR FREE!!',
                              style: TextStyle(fontSize: 25),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
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
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10,right: 10),
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width / 2.5,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              labelText: 'First Name',
                                              border: OutlineInputBorder()),
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Please enter First Name';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Expanded(
                                      child: Container(

                                        width:
                                            MediaQuery.of(context).size.width / 2.5,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              labelText: 'Last Name',
                                              border: OutlineInputBorder()),
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Please enter Last Name';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: 'Mobile Number',
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
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
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
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                onPressed: () => {}, child: Text('Submit'))
                          ],
                        ),
                      ),
                    ))),
    );
  }
}
// Container(
// padding: EdgeInsets.all(15),
// child: Column(
// children: [
// Expanded(
// child: Text(
// 'REGISTER FOR FREE!!',
// style: TextStyle(fontSize: 35),
// )),
// Expanded(
// child: TextFormField(
// decoration: InputDecoration(
// labelText: 'Business Name',
// border: OutlineInputBorder()),
// // The validator receives the text that the user has entered.
// validator: (value) {
// if (value == null || value.isEmpty) {
// return 'Please enter some text';
// }
// return null;
// },
// ),
// ),
// Expanded(
// child: Column(
// children: [
// Row(
// children: [
// Expanded(
// child: TextFormField(
// decoration: InputDecoration(
// labelText: 'First Name',
// border: OutlineInputBorder()),
// // The validator receives the text that the user has entered.
// validator: (value) {
// if (value == null || value.isEmpty) {
// return 'Please enter First Name';
// }
// return null;
// },
// ),
// ),
// SizedBox(
// width: 30,
// ),
// Expanded(
// child: TextFormField(
// decoration: InputDecoration(
// labelText: 'Last Name',
// border: OutlineInputBorder()),
// // The validator receives the text that the user has entered.
// validator: (value) {
// if (value == null || value.isEmpty) {
// return 'Please enter Last name';
// }
// return null;
// },
// ),
// )
// ],
// ),
// ],
// ),
// ),
// Expanded(
// child: TextFormField(
// decoration: InputDecoration(
// labelText: 'Mobile Number:',
// border: OutlineInputBorder()),
// // The validator receives the text that the user has entered.
// validator: (value) {
// if (value == null || value.isEmpty) {
// return 'Please enter some text';
// }
// return null;
// },
// ),
// ),
// Expanded(
// child: TextFormField(
// decoration: InputDecoration(
// labelText: 'Address',
// border: OutlineInputBorder()),
// // The validator receives the text that the user has entered.
// validator: (value) {
// if (value == null || value.isEmpty) {
// return 'Please enter some text';
// }
// return null;
// },
// ),
// ),
// ElevatedButton(
// onPressed: () => {}, child: Text('Submit'))
// ],
// ),
// )
