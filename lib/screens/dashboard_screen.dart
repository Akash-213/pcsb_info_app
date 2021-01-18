import 'package:PCSB_APP/widgets/dashboardGrid.dart';
import 'package:flutter/material.dart';

import '../widgets/mainDrawer.dart';

class DashboardScreen extends StatelessWidget {
  static const routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
        ),
        drawer: MainDrawer(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://image.freepik.com/free-icon/important-person_318-10744.jpg',
                  width: 150,
                ),
              ),
            ),
            Expanded(child: DashboardGrid()),
          ],
        ),
      ),
    );
  }
}
