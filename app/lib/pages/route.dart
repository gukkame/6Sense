import 'package:flutter/material.dart';

import '../screens/map.dart';

class RoutPage extends StatefulWidget {
  const RoutPage({super.key});
  @override
  State<RoutPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<RoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapScreen(),
    );
  }
}
