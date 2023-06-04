import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../modules/place.dart';

const kGoogleApiKey = 'AIzaSyBMkBZz4l3L-PrAD7lqDy6cc01dF4JHBZg';

class MapData {
  Future<String> getPlaceId(LatLng latLng) async {
    final urlGetPlaceId =
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=${latLng.latitude},${latLng.longitude}&key=$kGoogleApiKey';
    final placeID = await http.get(Uri.parse(urlGetPlaceId));
    if (placeID.statusCode == 200) {
      final decodedJson = jsonDecode(placeID.body);
      final results = decodedJson['results'];
      if (results.isNotEmpty) {
        return results[0]['place_id'];
      }
    } else {
      print("ERROR: Bad http request ");
      return '';
    }
    return '';
  }

  Future<Place> getTapLocation(LatLng latLng) async {
    var placeId = await getPlaceId(latLng);
    final url =
        'https://maps.googleapis.com/maps/api/place/details/json?fields=name%2Cformatted_address%2Cvicinity&place_id=$placeId&key=$kGoogleApiKey';
    final res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      final decodedJson = jsonDecode(res.body);
      if (decodedJson['status'] == 'OK') {
        final result = decodedJson['result'];
        return Place(
          title: result['name'],
          description: result['formatted_address'],
          lat: latLng.latitude,
          lng: latLng.longitude,
        );
      }
      return Place(title: 'ERROR google API ');
    }
    return Place(title: 'ERROR google API ');
  }
}
