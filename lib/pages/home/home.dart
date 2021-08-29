import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? imagen;
  final picker = ImagePicker();

  Future tomarUnaFoto(op) async {
    var pickedFile;
    if (op == 1) {
      pickedFile = await picker.getImage(source: ImageSource.camera);
    } else {
      pickedFile = await picker.getImage(source: ImageSource.gallery);
    }
    setState(() {
      if (pickedFile != null) {
        imagen = File(pickedFile.path);
      } else {
        print("No se seleccion ninguna foto");
      }
    });
  }

  Future<void> _optionsDialogsBox() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: Text("Tomar Fotografia"),
                  onTap: () {
                    tomarUnaFoto(1);
                  },
                ),
                SizedBox(height: 10),
                GestureDetector(
                  child: Text("Tomar merca"),
                  onTap: () {
                    tomarUnaFoto(2);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }

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
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.grey),
                child: Text(
                  "Camara",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: _optionsDialogsBox,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
