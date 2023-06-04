import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import '../modules/place.dart';
import '../permision.dart';

class MapScreen extends StatefulWidget {
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  LatLng currentLocation = LatLng(59.3530117, 27.4133083);
  List<Place> favLocations = [];
  late GoogleMapController mapController;
  var tappedOnMarker = false;
  var addToFav = false;
  Icon icon = Icon(Icons.favorite_border);
  late Place lastTappedMarker = Place(title: '');

  CameraPosition camera =
      CameraPosition(target: LatLng(59.3530117, 27.4133083), zoom: 12);
  void _onMapCreated(GoogleMapController controller) async {
    setState(() {
      favLocations = favLocations;
    });
    mapController = controller;
  }

  void updateLocation(Place place) {
    setState(() {
      lastTappedMarker = place;
      currentLocation = LatLng(place.lat!, place.lng!);
      tappedOnMarker = true;
      mapController.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(currentLocation.latitude, currentLocation.longitude),
          zoom: 15.0,
        ),
      ));
    });
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
              markers: convertPlacesToMarkers(favLocations),
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
