import 'dart:async';

import 'package:flutter/material.dart';
import '../screens/dashboard_screen.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatefulWidget {
  static const routeName = '/splash';

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(DashboardScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "PCSB",
            style: TextStyle(fontSize: 75, color: Colors.blue[900]),
          ),
          Image.network(''),
          Center(
            child: SpinKitWave(
              color: Theme.of(context).accentColor,
              size: 50.0,
            ),
          ),
        ],
      ),
    );
  }
}
