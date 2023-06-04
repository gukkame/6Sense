import 'package:flutter/material.dart';

class SearchLocation extends StatefulWidget {
  const SearchLocation({super.key});

  @override
  State<SearchLocation> createState() => _SearchLocationState();
}

class _SearchLocationState extends State<SearchLocation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 17.5,
        vertical: 0.0,
      ),
      height: 86,
      width: 380,
      decoration: BoxDecoration(
          color: Colors.indigoAccent.shade100,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.0),
            topLeft: Radius.circular(8.0),
          )),
      child: TextField(
        style: TextStyle(
          fontSize: 35.0,
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
        ),
        decoration: InputDecoration(
          hintText: 'Search here...',
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 35,
          ),
          border: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: Colors.white,
            size: 70,
          ),
        ),
      ),
    );
  }
}
