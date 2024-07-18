import 'package:flutter/material.dart';
import 'package:registration_app/form_model.dart';
import 'package:registration_app/functions.dart';
import 'package:registration_app/students_list_sreen.dart';

class FormSreen extends StatefulWidget {
  const FormSreen({super.key});

  @override
  State<FormSreen> createState() => _FormSreenState();
}

class _FormSreenState extends State<FormSreen> {
  List<Student>? studentList = List.empty(growable: true);
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final dobController = TextEditingController();
  final courseController = TextEditingController();
  final emailController = TextEditingController();
  final contactController = TextEditingController();
  String? selectedGender;
  String? selectedCourse;

  final List<String> courses = [
    '<Select a course>',
    'Machine Learning and Artificial Intelligence',
    'Data Science and Analytics',
    'Cybersecurity Fundamentals',
    'Cloud Computing and Architecture',
    'Full Stack Web Development',
    'Mobile App Development(Flutter)',
    'Blockchain and Cryptocurrency',
  ];

  @override
  void initState() {
    super.initState();
    _loadStudentList();
  }

  Future<void> _loadStudentList() async {
    List<Student>? savedStudentList = await getStudentList();
    setState(() {
      if (savedStudentList != null) {
        studentList = savedStudentList;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 150, 224),
        centerTitle: true,
        title: const Text(
          "Registration Form",
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
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      label: labelWithAsterisk("Course"),
                      border: const OutlineInputBorder(),
                    ),
                    value: selectedCourse,
                    items: courses
                        .map((course) => DropdownMenuItem<String>(
                              value:
                                  course == 'Select a course' ? null : course,
                              child: Text(course),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedCourse = value;
                      });
                    },
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          value == 'Select a course') {
                        return 'Please select a course';
                      }
                      return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      label: labelWithAsterisk("Name"),
                      hintText: "Name",
                      border: const OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please fill this field.";
                      }
                      return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 0, top: 10, bottom: 10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            bottomLeft: Radius.circular(4.0),
                          ),
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Text(
                            "+91",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          controller: contactController,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            label: labelWithAsterisk("Contact Number"),
                            hintText: "Contact Number",
                            border: const OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please fill this field.";
                            }
                            if (value.trim().length != 10) {
                              return "Number Not Valid.";
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    maxLines: 4,
                    keyboardType: TextInputType.multiline,
                    controller: addressController,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      label: Text("Address"),
                      hintText: "Address",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: dobController,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      label: Text("Date of Birth"),
                      hintText: "Date of Birth",
                      border: OutlineInputBorder(),
                    ),
                    onTap: () {
                      _selectDate(context);
                    },
                    readOnly: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Gender",
                      border: OutlineInputBorder(),
                    ),
                    value: selectedGender,
                    items: ['Select Gender', 'Male', 'Female', 'Other']
                        .map((gender) => DropdownMenuItem<String>(
                              value:
                                  gender == '<Select Gender>' ? null : gender,
                              child: Text(gender),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Email Id",
                      hintText: "Email Id",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return null;
                      }
                      return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[900],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _showRegisterDialog();
                        } else {
                          showSnackBar(
                              context, "Please Enter Mandatory Fields.");
                        }
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[900],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const RegisteredStudentScreen())).then(
                          (onValue) {
                            _loadStudentList();
                          },
                        );
                      },
                      child: const Text(
                        "Show Registered Students",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        dobController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  void _showRegisterDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirmation"),
          content: const Text(
              "By clicking yes, you are confirming your registration."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("No"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    studentList!.add(Student(
                        nameController.text,
                        selectedCourse!,
                        selectedGender!,
                        addressController.text,
                        contactController.text,
                        dobController.text,
                        emailController.text));
                    saveStudentList(studentList!);
                  });

                  showSnackBar(context, "Registration Successful.");

                  _formKey.currentState?.reset();
                  setState(() {
                    nameController.clear();
                    selectedCourse = null;
                    selectedGender = null;
                    addressController.clear();
                    dobController.clear();
                    emailController.clear();
                    contactController.clear();
                  });
                }
              },
              child: const Text("Yes"),
            ),
          ],
        );
      },
    );
  }

  String? fieldIsEmpty(String? value) {
    if (value == null || value.isEmpty) {
      return "Please fill this field.";
    }
    return null;
  }

  Widget labelWithAsterisk(String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label),
        const Text(
          ' *',
          style: TextStyle(color: Colors.red),
        ),
      ],
    );
  }
}
