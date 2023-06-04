import 'package:flutter/cupertino.dart';

// Navigates to the given router page
void navigate(BuildContext context, String routeName, {Object? args}) {
  Navigator.pushNamed(context, routeName);
}
