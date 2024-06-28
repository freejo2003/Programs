// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sample_project/functions.dart';
import 'package:sample_project/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  String username = "user";
  String password = "1234";
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  void _toggleVisibility() {
    
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Image.network(
            "https://img.freepik.com/free-vector/instagram-vector-social-media-icon-7-june-2021-bangkok-thailand_53876-136728.jpg?w=740&t=st=1719469090~exp=1719469690~hmac=3c52725712056aace41973a16ec521dfd6fc33decbb217ec6a748d67f498528c",
            scale: Material.defaultSplashRadius * 0.2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: userNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'UserName',
                prefixIcon: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              obscureText: _obscureText,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                prefixIcon: Icon(Icons.password),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: _toggleVisibility,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              if (username == userNameController.text &&
                  password == passwordController.text) {
                logIn(true);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Invalid Username/Password")));
              }
              // print(userNameController.text);//prints username in
              // print(passwordController.text);
              // await addData();
              // getData();
            },
            child: Text(
              "Login",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
