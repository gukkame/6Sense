import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

import '../permision.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  LatLng currentLocation = LatLng(56.9634158, 24.1076823);

  late GoogleMapController mapController;
  var tappedOnMarker = false;
  var addToFav = false;
  Icon icon = Icon(Icons.favorite_border);
 
  CameraPosition camera =
      CameraPosition(target: LatLng(56.9634158, 24.1076823), zoom: 12);
  void _onMapCreated(GoogleMapController controller) async {
    mapController = controller;
  }



  @override
  void initState() {
    final userPerm = Permision();
    userPerm.getUserCurrentLocation().then((value) {
      setState(() {
        currentLocation = LatLng(value.latitude, value.longitude);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 12),
          const SizedBox(height: 12),
          Expanded(
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: camera,
              mapType: MapType.normal,
              myLocationEnabled: true,
              compassEnabled: true,
     
            ),
          ),
          Positioned(
              child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            height: tappedOnMarker ? 100 : 0,
            decoration: BoxDecoration(color: Colors.white30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
          ))
        ],
      ),
    );
  }
}
