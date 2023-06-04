import 'package:app/widgets/RecordButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/SearchBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Everything under return will be displayed on the screen
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        toolbarHeight: 100,
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 70,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.only(left: 30.0),
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 70,
                ),
              ),
            ),
            ListTile(
              title: Container(
                margin: EdgeInsets.only(
                  right: 70,
                  left: 20,
                  bottom: 30,
                ),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 7,
                      color: Colors.indigoAccent,
                    )),
                width: 100,
                child: Icon(
                  Icons.settings_voice,
                  color: Colors.indigoAccent,
                  size: 100,
                ),
              ),
              onTap: () {
                // Handle sidebar item 1 tap
              },
            ),
            ListTile(
              title: Text(
                'My Routes',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 40,
                ),
              ),
              onTap: () {
                // Handle sidebar item 2 tap
              },
            ),
            ListTile(
              title: Text(
                'Display',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 40,
                ),
              ),
              onTap: () {
                // Handle sidebar item 2 tap
              },
            ),
            ListTile(
              title: Text(
                'History',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 40,
                ),
              ),
              onTap: () {
                // Handle sidebar item 2 tap
              },
            ),
            ListTile(
              title: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 40,
                ),
              ),
              onTap: () {
                // Handle sidebar item 2 tap
              },
            ),
            ListTile(
              title: Text(
                'Deals',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 40,
                ),
              ),
              onTap: () {
                // Handle sidebar item 2 tap
              },
            ),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 40,
                ),
              ),
              onTap: () {
                // Handle sidebar item 2 tap
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 0.0),
                child: Text(
                  'Where do you \n want to go \n?',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              RecordButton(),
              SearchLocation(),
            ],
          ),
        ),
      ),
    );
  }
}
