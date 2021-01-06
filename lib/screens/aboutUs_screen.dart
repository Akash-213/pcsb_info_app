import 'package:flutter/material.dart';

import '../widgets/mainDrawer.dart';

class AboutUsScreen extends StatelessWidget {
  static const routeName = '/aboutUs';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("About Us"),
        ),
        drawer: MainDrawer(),
        body: Container(
          child: Text("This is the About Us Screen"),
        ),
      ),
    );
  }
}
