import 'package:flutter/material.dart';

import '../widgets/mainDrawer.dart';

class OurTeamScreen extends StatelessWidget {
  static const routeName = '/ourTeam';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Our Team"),
        ),
        drawer: MainDrawer(),
        body: Container(
          child: Text("This is the Our Team"),
        ),
      ),
    );
  }
}
