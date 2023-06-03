import 'package:flutter/cupertino.dart';

// Navigates to the given router page
void navigate(BuildContext context, String routeName, {Object? args}) {
  Navigator.pushNamed(context, routeName, arguments: args);
}

// Extract arguments when navigating
class Arguments {
  late double? lat;
  late double? lng;
  Arguments(BuildContext context) {
    var data = (ModalRoute.of(context)!.settings.arguments ??
        <String, dynamic>{}) as Map<String, dynamic>;
    lat = data.containsKey("lat") ? data["lat"] : null;
    lng = data.containsKey("lng") ? data["lng"] : null;
  }
}
