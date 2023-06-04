import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
export 'recording.dart';

class RecordingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(''),
        iconTheme: IconThemeData(
           color: Colors.indigoAccent,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 55,
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
              'recording...',
              style: TextStyle(fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.indigoAccent,
              ),
              textAlign: TextAlign.center,
            ),
            ),
            Container(
              child: Icon(
                    Icons.water,
                    color: Colors.indigoAccent,
                    size: 400,
                  ),
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
