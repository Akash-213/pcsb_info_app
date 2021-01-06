import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  static const routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Profile"),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
          child: Container(
            child: Column(children: [
              Text("Details", style: TextStyle(fontSize: 30)),
              SizedBox(height: 40),
              Divider(
                color: Colors.black45,
                thickness: 2,
                indent: 15,
                endIndent: 15,
              ),
              ListTile(
                subtitle: Text("Name", style: TextStyle(fontSize: 20)),
                title: Text("Akash Kulkarni", style: TextStyle(fontSize: 24)),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                subtitle: Text("Department", style: TextStyle(fontSize: 20)),
                title: Text("Information Technology",
                    style: TextStyle(fontSize: 24)),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                subtitle: Text("Class Div", style: TextStyle(fontSize: 20)),
                title: Text("SE - 10", style: TextStyle(fontSize: 24)),
                trailing: Icon(Icons.edit),
              ),
              Divider(
                color: Colors.black45,
                thickness: 2,
                indent: 15,
                endIndent: 15,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
