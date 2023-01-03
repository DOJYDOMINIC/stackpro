import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Davidekcham(),
  ));
}

class Davidekcham extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text("Profile"),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topLeft,
                      image: AssetImage("assets/images/1 (3).jpg"))),
            ),
          ),

          Positioned(
            left: 121.8,
            top: 186,
            child: CircleAvatar(backgroundColor: Colors.white,
              radius: 74,
            ),
          ),
          Positioned(
            left: 20,
            top: 190,
            child: Row(
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.message),
                  backgroundColor: Colors.red,
                ),
                SizedBox(
                  width: 50,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://wallpaperaccess.com/full/1132318.jpg"),
                  radius: 70,
                ),
                SizedBox(
                  width: 50,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
          Positioned(
            top: 350,
            left: 100,
            child: Column(
              children: [
                Text(
                  "David Beckham",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text(
                  "model / super star",
                  style: TextStyle(color: Colors.blueAccent,fontStyle: FontStyle.italic, fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
