void main() {
  Map<String, dynamic> studentList = {
    //here the data or value part is dynamic
    "class": "12A",
    "students": ["stu1", "stu2", "stu3"], //we can include list also....
    "NumberOfstudents": 5,
    "isclass": true
  };
  print(studentList["class"]);
  print(studentList["NumberOfstudents"]);
  print(studentList["students"]);
  print(studentList["students"][2]);
}
