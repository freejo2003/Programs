import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade800,
        //leading: Icon(Icons.arrow_back),
        title: Text("WhatsApp",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w600)),
        actions: [
          Icon(Icons.search, color: Colors.white, size: 30),
          Icon(Icons.more_vert, color: Colors.white, size: 30),
        ],
      ),
      body:
       ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person, size: 43),
            title: Text("James",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            subtitle: Text("Hello James....."),
            trailing: Column(
              children: [
                Text("04:20 pm", style: TextStyle(color: Colors.green))
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person, size: 43),
            title: Text("John",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            subtitle: Text("Am busy i will call you later."),
            trailing: Column(
              children: [
                Text("04:15 pm", style: TextStyle(color: Colors.green))
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person, size: 43),
            title: Text("Alice",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            subtitle: Text("Let's catch up tomorrow."),
            trailing: Column(children: [
              Text("02:30 pm", style: TextStyle(color: Colors.green))
            ]),
          ),
          ListTile(
            leading: Icon(Icons.person, size: 43),
            title: Text("Bob",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            subtitle: Text("Meeting rescheduled to 3 PM."),
            trailing: Column(children: [
              Text("01:15 pm", style: TextStyle(color: Colors.green))
            ]),
          ),
          ListTile(
            leading: Icon(Icons.person, size: 43),
            title: Text("Diana",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            subtitle: Text("See you at the event."),
            trailing: Column(children: [
              Text("11:45 am", style: TextStyle(color: Colors.green))
            ]),
          ),
          ListTile(
            leading: Icon(Icons.person, size: 43),
            title: Text("Eve",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            subtitle: Text("Call me when you are free."),
            trailing: Column(children: [
              Text("10:20 am", style: TextStyle(color: Colors.green))
            ]),
          ),
          ListTile(
            leading: Icon(Icons.person, size: 43),
            title: Text("Frank",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            subtitle: Text("Got the documents, thanks."),
            trailing: Column(children: [
              Text("09:05 am", style: TextStyle(color: Colors.green))
            ]),
          ),
          ListTile(
            leading: Icon(Icons.person, size: 43),
            title: Text("Grace",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            subtitle: Text("Lunch at 1 PM?"),
            trailing: Column(children: [
              Text("08:50 am", style: TextStyle(color: Colors.green))
            ]),
          ),
          ListTile(
            leading: Icon(Icons.person, size: 43),
            title: Text("Henry",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            subtitle: Text("Sent you the files."),
            trailing: Column(children: [
              Text("07:30 am", style: TextStyle(color: Colors.green))
            ]),
          ),
          ListTile(
            leading: Icon(Icons.person, size: 43),
            title: Text("Ivy",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            subtitle: Text("Will be late today."),
            trailing: Column(children: [
              Text("06:15 am", style: TextStyle(color: Colors.green))
            ]),
          ),
          ListTile(
            leading: Icon(Icons.person, size: 45),
            title: Text("Jack",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            subtitle: Text("Please review the report."),
            trailing: Column(children: [
              Text("05:45 am", style: TextStyle(color: Colors.green))
            ]),
          ),
          ListTile(
            leading: Icon(Icons.person, size: 45),
            title: Text("Karen",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            subtitle: Text("Happy Birthday!"),
            trailing: Column(children: [
              Text("04:00 am", style: TextStyle(color: Colors.green))
            ]),
          ),
          ListTile(
            leading: Icon(Icons.person, size: 45),
            title: Text("Jack",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            subtitle: Text("Please review the report."),
            trailing: Column(children: [
              Text("05:45 am", style: TextStyle(color: Colors.green))
            ]),
          ),
          ListTile(
            leading: Icon(Icons.person, size: 45),
            title: Text("Karen",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            subtitle: Text("Happy Birthday!"),
            trailing: Column(children: [
              Text("04:00 am", style: TextStyle(color: Colors.green))
            ]),
          ),
        ],
      ),
    );
  }
}
