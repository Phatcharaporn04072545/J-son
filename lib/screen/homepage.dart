import 'package:flutter/material.dart';
import 'package:json/widgits/input_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InputScreen()),
          );
        },
        child: Icon(Icons.add_a_photo_outlined),
      ),
      appBar: AppBar(
        title: Text(
          'บุคคล',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        centerTitle: true, 
      ),
    );
  }
}