import 'package:flutter/material.dart';
import 'package:json/widgits/image_input.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('กรอกข้อมูล'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: 'กรุณากรอกข้อความ'
              ),
            ),
            SizedBox(height: 50),
            ImageInput()
          ],
        ),
      ),
    );
  }
}