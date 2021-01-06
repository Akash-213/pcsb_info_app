import 'package:flutter/material.dart';

class Team extends StatelessWidget {
  static const routeName = '/team';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Team"),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 20),
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
                subtitle: Text("Team Name", style: TextStyle(fontSize: 20)),
                title: Text("App Development", style: TextStyle(fontSize: 24)),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                subtitle: Text("Position", style: TextStyle(fontSize: 20)),
                title: Text("Team Member", style: TextStyle(fontSize: 24)),
                trailing: Icon(Icons.edit),
              ),
              Divider(
                color: Colors.black45,
                thickness: 2,
                indent: 15,
                endIndent: 15,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
