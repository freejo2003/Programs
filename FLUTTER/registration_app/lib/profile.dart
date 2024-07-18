import 'package:registration_app/contact.dart';
import 'package:registration_app/form_screen.dart';
import 'package:registration_app/login.dart';
import 'package:registration_app/students_list_sreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String username = "USERNAME";

  @override
  void initState() {
    super.initState();
    _loadUsername();
  }

  _loadUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('username') ?? "USERNAME";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: const Text(
          'HOME',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      drawer: const CustomDrawer(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 19, 164, 255),
              Color.fromARGB(255, 65, 206, 241),
              Color.fromARGB(255, 143, 228, 254),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.blueGrey,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 10.0,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, size: 40.0),
                    ),
                    const SizedBox(width: 16.0),
                    Text(
                      username,
                      style: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 26.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.info, size: 40.0),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Contact()),
                          );
                        },
                      ),
                      const Text('ABOUT US'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.draw, size: 40.0),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FormSreen()),
                          );
                        },
                      ),
                      const Text('REGISTRATION'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.logout_rounded, size: 40.0),
                        onPressed: () async {
                          SharedPreferences prefs = await SharedPreferences.getInstance();
                          bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
                          if (isLoggedIn) {
                            await prefs.setBool('isLoggedIn', false);
                          }
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                            (route) => false,
                          );
                        },
                      ),
                      const Text('LOGOUT'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32.0),
              const Text(
                "Courses Provided",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => _getField(index),
                  itemCount: courses.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getField(int index) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(courses[index]),
      ),
    );
  }

  final List<String> courses = [
    'Machine Learning and Artificial Intelligence',
    'Data Science and Analytics',
    'Cybersecurity Fundamentals',
    'Cloud Computing and Architecture',
    'Full Stack Web Development',
    'Mobile App Development(Flutter)',
    'Blockchain and Cryptocurrency',
  ];
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              "MENU",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            title: const Text(
              "REGISTER STUDENTS",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FormSreen()),
              );
            },
          ),
          ListTile(
            title: const Text(
              "REGISTERED STUDENTS LIST",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const RegisteredStudentScreen()),
              );
            },
          ),
          ListTile(
            title: const Text(
              "PROFILE",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text(
              "EXIT",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              SystemNavigator.pop();
            },
          ),
        ],
      ),
    );
  }
}
