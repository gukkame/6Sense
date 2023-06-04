import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'recording.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Everything under return will be displayed on the screen
    backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 50,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle sidebar item 1 tap
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Handle sidebar item 2 tap
              },
            ),
          ],
        ),
      ),
      body:  SingleChildScrollView(
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
              'Where do you \n want to go \n?',
              style: TextStyle(fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            ),
            GestureDetector( // gesture for microphone button
            onTap: () {
              // Do something
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RecordingPage()),
              );
            },
            child: new Align(
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      border: Border.all(width: 15, color: Colors.white,)),
                  child: Icon(
                    Icons.settings_voice,
                    color: Colors.white,
                    size: 180,
                  ),
                )),
          ),
            Container(
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0,),
                height: 124,
                width: 380,
                decoration: BoxDecoration(
                color: Colors.indigoAccent.shade100,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0),
                )
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                  ),
                decoration: InputDecoration(
                hintText: 'Search here...',
                hintStyle: TextStyle(color: Colors.white, fontSize: 35,),
                border: InputBorder.none,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 70,
                ),
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
