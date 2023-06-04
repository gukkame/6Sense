import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
export 'recording.dart';

class RecordingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
           color: Colors.indigoAccent,
           size: 70,
        ),
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
                  margin: EdgeInsets.only(right: 70, left: 20, bottom: 30,),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 7, color: Colors.indigoAccent,)),
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
              title: Text('My Routes',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 40,
                ),),
              onTap: () {
                // Handle sidebar item 2 tap
              },
            ),
            ListTile(
              title: Text('Display',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 40,
                ),),
              onTap: () {
                // Handle sidebar item 2 tap
              },
            ),
            ListTile(
              title: Text('History',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 40,
                ),),
              onTap: () {
                // Handle sidebar item 2 tap
              },
            ),
            ListTile(
              title: Text('Profile',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 40,
                ),),
              onTap: () {
                // Handle sidebar item 2 tap
              },
            ),
            ListTile(
              title: Text('Deals',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 40,
                ),),
              onTap: () {
                // Handle sidebar item 2 tap
              },
            ),
            ListTile(
              title: Text('Settings',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 40,
                ),),
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
                margin: EdgeInsets.only(top: 50.0),
              child: Text(
              'recording...',
              style: TextStyle(fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.indigoAccent,
              ),
              textAlign: TextAlign.center,
            ),
            ),
            Container(
              /*child: Icon(
                    Icons.water,
                    color: Colors.indigoAccent,
                    size: 400,
                  ),*/
                child: Image.network('https://assets-global.website-files.com/5f84a7b6c11fef0440b87eab/6021a75aee9e1644e009513b_Audio_Wave.gif')
            ),
            Container(
              child: Icon(
                    Icons.sync,
                    color: Colors.indigoAccent,
                    size: 170,
                  ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
