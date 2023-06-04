import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Where do you \n want to go \n?',
              style: TextStyle(fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            GestureDetector( // gesture for microphone button
            onTap: () {
              // Do something
            },
            child: new Align(
                //alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      border: Border.all(width: 15, color: Colors.white)),
                  child: Icon(
                    Icons.settings_voice,
                    color: Colors.white,
                    size: 180,
                  ),
                )),
          ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0,),
                height: 200,
                width: 380,
                decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextField(
                decoration: InputDecoration(
                hintText: 'Search here...',
                border: InputBorder.none,
                icon: Icon(
                  Icons.search,
                  color: Colors.indigoAccent,
                  size: 100,
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
