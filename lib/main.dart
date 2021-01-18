import 'package:flutter/material.dart';

import './screens/dashboardDetails/profile.dart';
import './screens/dashboardDetails/team.dart';

//screens
import './screens/dashboard_screen.dart';
import './screens/ourTeam_screen.dart';
import './screens/aboutUs_screen.dart';
import './screens/splash_screen.dart';
import 'screens/dashboard_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Splash.routeName,
      routes: {
        Splash.routeName: (ctx) => Splash(),
        DashboardScreen.routeName: (ctx) => DashboardScreen(),
        AboutUsScreen.routeName: (ctx) => AboutUsScreen(),
        OurTeamScreen.routeName: (ctx) => OurTeamScreen(),
        Profile.routeName: (ctx) => Profile(),
        Team.routeName: (ctx) => Team(),
      },
    );
  }
}
