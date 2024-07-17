class Student {
  String name;
  String course;
  String address;
  String contact;
  String dob;
  String email; // Date of Birth field
  String gender;

  Student(this.name, this.course, this.gender, this.address, this.contact,
      this.dob, this.email);

  Student.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        course = json['course'],
        gender = json['gender'],
        address = json['address'],
        contact = json['contact'],
        dob = json['dob'],
        email = json['email'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'course': course,
        'gender': gender,
        'address': address,
        'contact': contact,
        'dob': dob,
        'email': email
      };
}
