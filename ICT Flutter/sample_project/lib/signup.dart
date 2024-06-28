// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, unused_local_variable

import 'package:flutter/material.dart';
import 'package:sample_project/form_model_class.dart';
import 'package:sample_project/student_list.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final dateofbirthController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "SignUp",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Name"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Address"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: dateofbirthController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Date Of Birth"),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              FormModelClass student = FormModelClass(nameController.text,
                  addressController.text, dateofbirthController.text);
              print(student.name);
              print(student.address);
              print(student.dateofbirth);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 57, 30, 131)),
            ),
            child: Text(
              "SignUp",
              style: TextStyle(fontSize: 25, color: const Color.fromARGB(255, 249, 248, 248)),
            ),
          ),
          ElevatedButton(//navigate to page with list of students who registerd
            onPressed: () async {
              Navigator.push(context, MaterialPageRoute(builder: (context) => StudentList()));

              
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 57, 30, 131)),
            ),
            child: Text(
              "View Students",
              style: TextStyle(fontSize: 25, color: const Color.fromARGB(255, 249, 248, 248)),
            ),
          )
        ],
      ),
    );
  }
}
