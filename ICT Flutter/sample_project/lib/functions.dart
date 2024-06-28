// ignore_for_file: prefer_conditional_assignment, avoid_print

import 'package:shared_preferences/shared_preferences.dart';

Future<void> addData() async {
  final prefs = await SharedPreferences
      .getInstance(); //don't worry just like object creation
  prefs.setString("name", "Freejo Jaison K");
  prefs.setBool("isUserLogged", true);
}

Future<void> getData() async {
  final prefs = await SharedPreferences
      .getInstance(); //don't worry just like object creation
  String? data =
      prefs.getString("name"); //if no name then it will return "No name"
  print(data);
}

Future<void> logIn(isLoggeedIn) async {
  final prefs = await SharedPreferences
      .getInstance(); //don't worry just like object creation

  prefs.setBool("isUserLogged", isLoggeedIn);
}

Future<bool> login() async {
  final prefs = await SharedPreferences
      .getInstance(); //don't worry just like object creation
  bool? isLoggeedIn = prefs.getBool("isUserLogged");
  if (isLoggeedIn == null) {
    isLoggeedIn = false;
  }
  return true;
}
