import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Home Page',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.grey),
              child: Text(
                "Camara",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                print("Chupala");
              },
            ),
          ),
        ),
      ),
    );
  }
}
