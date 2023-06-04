import 'package:google_maps_flutter/google_maps_flutter.dart';

class Place {
  final String title;
  final String? description;
  final double? lat;
  final double? lng;
  Place({
    required this.title,
    this.description,
    this.lat,
    this.lng,
  });
  Marker toMarker() {
    return Marker(
      markerId: MarkerId(title),
      position: LatLng(lat!, lng!),
      infoWindow: InfoWindow(
        title: title,
        snippet: description,
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'lat': lat,
      'lng': lng,
    };
  }
}

Set<Marker> convertPlacesToMarkers(List<Place> places) {
  final markers = <Marker>{};
  for (var place in places) {
    markers.add(place.toMarker());
  }
  return markers;
}
