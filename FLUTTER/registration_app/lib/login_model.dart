import 'package:flutter/material.dart';

class User {
  final String username;
  final String password;
  final bool isRegistered;

  User({
    required this.username,
    required this.password,
    this.isRegistered = false,
  });
}

class UserModel extends ChangeNotifier {
  final List<User> _users = [];

  void addUser(User user) {
    _users.add(user);
    notifyListeners();
  }

  User? authenticate(String username, String password) {
    for (var user in _users) {
      if (user.username == username && user.password == password && user.isRegistered) {
        return user;
      }
    }
    return null;
  }

  bool isUsernameTaken(String username) {
    return _users.any((user) => user.username == username);
  }
}
