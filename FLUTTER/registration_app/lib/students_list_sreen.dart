import 'package:flutter/material.dart';
import 'package:registration_app/form_model.dart';
import 'package:registration_app/functions.dart';

class RegisteredStudentScreen extends StatefulWidget {
  const RegisteredStudentScreen({super.key});

  @override
  State<RegisteredStudentScreen> createState() =>
      _RegisteredStudentScreenState();
}

class _RegisteredStudentScreenState extends State<RegisteredStudentScreen> {
  List<Student>? studentList = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    _loadStudentList();
  }

  Future<void> _loadStudentList() async {
    List<Student>? savedStudentList = await getStudentList();
    setState(() {
      studentList = savedStudentList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        centerTitle: true,
        title: const Text(
          "Registered Students",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 19, 164, 255),
              Color.fromARGB(255, 65, 206, 241),
              Color.fromARGB(255, 143, 228, 254),
            ],
          ),
        ),
        child: (studentList == null || studentList!.isEmpty)
            ? const Center(child: Text("No data recorded."))
            : ListView.builder(
                itemCount: studentList?.length,
                itemBuilder: (context, index) => getField(index),
              ),
      ),
    );
  }

  Widget getField(int index) {
    return Dismissible(
      key: ValueKey<Student>(studentList![index]),
      background: Container(
        color: const Color.fromARGB(255, 182, 4, 57),
        child: const Icon(Icons.delete),
      ),
      child: ListTile(
        leading: const Icon(Icons.person, size: 50, color: Colors.black),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                studentList![index].name,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                "Course: ${studentList![index].course}",
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              trailing: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                          "Name: ${studentList![index].name}",
                        ),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Course: ${studentList![index].course}"),
                            Text("Address: ${studentList![index].address}"),
                            Text("Gender: ${studentList![index].gender}"),
                            Text("Contact: ${studentList![index].contact}"),
                            Text("DOB: ${studentList![index].dob}"),
                            Text("Email: ${studentList![index].email}")
                          ],
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Close'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: const Icon(Icons.circle, color: Colors.black),
              ),
            )
          ],
        ),
      ),
      confirmDismiss: (DismissDirection direction) {
        return _alerDisplay(index);
      },
    );
  }

  Future<bool?> _alerDisplay(index) async {
    bool? del = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirmation!"),
          content: const Text("Are you sure you want to delete this item?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text("No"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
                setState(() {
                  studentList!.removeAt(index);
                  saveStudentList(studentList!);
                });
                showSnackBar(context, "Item Deleted Successfully.");
              },
              child: const Text("Yes"),
            ),
          ],
        );
      },
    );
    return del;
  }
}
