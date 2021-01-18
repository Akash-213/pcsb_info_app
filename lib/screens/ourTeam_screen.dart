import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widgets/mainDrawer.dart';

class OurTeamScreen extends StatelessWidget {
  static const routeName = '/ourTeam';

  Widget _buildImageSlider(String img, String name, String post) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20.0),
            child: Center(
              child: Image.asset(
                img,
                width: 200,
                height: 200,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(0.0),
            child: Center(
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                post,
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Our Team"),
          backgroundColor: Colors.blue,
        ),
        drawer: MainDrawer(),
        body: Center(
          child: Container(
            child: Center(
                child: ListView(
              children: [
                CarouselSlider(
                  items: [
                    _buildImageSlider('assets/images/profile.jpg',
                        "Kavita Sultanpure", 'Teacher Representative'),
                    _buildImageSlider('assets/images/profile.jpg',
                        "Veronica Robert", 'President'),
                    _buildImageSlider(
                        'assets/images/profile.jpg', "Vinay Nair", 'President'),
                    _buildImageSlider('assets/images/profile.jpg',
                        "Satyajit Roy", 'Vice-President'),
                    _buildImageSlider('assets/images/profile.jpg', "Sonal Rao",
                        'Vice-President'),
                    _buildImageSlider('assets/images/profile.jpg',
                        "Nidhi Kotwal", 'Vice-President'),
                  ],
                  //Slider Container properties
                  options: CarouselOptions(
                    height: 500,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 2000),
                    viewportFraction: 0.8,
                  ),
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
