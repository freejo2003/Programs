import 'package:flutter/material.dart';
import 'package:sample_project/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState(); 
    navigateTo();
  }
  navigateTo() async{
    await Future.delayed(Duration(seconds: 7));
    Navigator.push(
      context,MaterialPageRoute(builder:(context)=>LoginScreen())
    );
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(size: 400)
      ),
    );

  }
}
}