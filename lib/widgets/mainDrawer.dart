import 'package:flutter/material.dart';

import '../screens/dashboard_screen.dart';
import '../screens/ourTeam_screen.dart';
import '../screens/aboutUs_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTitle(String title, IconData icon, Function selectHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 22,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      onTap: selectHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 15, 5, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person),
                    backgroundColor: Colors.blue[900],
                    foregroundColor: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Hello Akash",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            height: 150,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
          ),
          SizedBox(height: 20),
          buildListTitle("Dashboard", Icons.dashboard, () {
            Navigator.of(context)
                .pushReplacementNamed(DashboardScreen.routeName);
          }),
          buildListTitle("About us", Icons.question_answer, () {
            Navigator.of(context).pushReplacementNamed(AboutUsScreen.routeName);
          }),
          buildListTitle("Our Team", Icons.person, () {
            Navigator.of(context).pushReplacementNamed(OurTeamScreen.routeName);
          }),
          SizedBox(height: 30),
          Divider(
            thickness: 2,
            color: Colors.black26,
            indent: 20,
            endIndent: 20,
          ),
          buildListTitle("Settings", Icons.settings, () {
            Navigator.of(context)
                .pushReplacementNamed(DashboardScreen.routeName);
          }),
          buildListTitle("Contact Us", Icons.contact_mail, () {
            Navigator.of(context)
                .pushReplacementNamed(DashboardScreen.routeName);
          }),
        ],
      ),
    );
  }
}
