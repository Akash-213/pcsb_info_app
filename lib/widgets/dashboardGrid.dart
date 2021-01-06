import 'package:flutter/material.dart';

import '../screens/dashboardDetails/profile.dart';
import '../screens/dashboardDetails/team.dart';

class DashboardGrid extends StatelessWidget {
  Widget _buildGridCard(String text, IconData icon, Function selectHandler) {
    return InkWell(
      splashColor: Colors.blue,
      onTap: selectHandler,
      child: Card(
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            Text(text),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: [
        _buildGridCard("My Profile", Icons.person, () {
          Navigator.of(context).pushNamed(Profile.routeName);
        }),
        _buildGridCard("Team Details", Icons.people, () {
          Navigator.of(context).pushNamed(Team.routeName);
        }),
        _buildGridCard("Contact Details", Icons.contact_phone, () {}),
        _buildGridCard("Announcements", Icons.announcement, () {}),
        _buildGridCard("Box 1", Icons.details, () {}),
        _buildGridCard("Box 2", Icons.details, () {}),
      ],
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 250,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
