// home_page.dart

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 10.0, top: 5), // Adjust the padding as needed
          child: MouseRegion(
            cursor: SystemMouseCursors.click, // Set the cursor to clickable hand cursor
            onEnter: (_) {
              setState(() {
                isHovered = true;
              });
            },
            onExit: (_) {
              setState(() {
                isHovered = false;
              });
            },
            child: GestureDetector(
              onTap: () {
                // Handle the onTap action here
                // For example, you can navigate to another page
                // Navigator.push(context, MaterialPageRoute(builder: (context) => AnotherPage()));
                print("Button tapped!");
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                transform: Matrix4.identity()..scale(isHovered ? 1.1 : 1.0),
                child: Image.asset(
                  'assets/logo.png', // Replace with the actual path to your image
                  height: 36, // Adjust the height as needed
                  width: 36, // Adjust the width as needed
                ),
              ),
            ),
          ),
        ),
        toolbarHeight: 100.0, // Set the desired height for the AppBar
      ),
      body: Container(
        color: Colors.grey[900], // Gray-black background color
        child: Column(
          children: [
            Center(
              child: Text(
                'Welcome to My Portfolio',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
