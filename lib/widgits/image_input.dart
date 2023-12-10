import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({super.key});

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? _imageFile;

  Future<void> _takePicture() async {
    final picker = ImagePicker();
    final imageFile = await picker.pickImage(source: ImageSource.camera, maxWidth: 600);

    if (imageFile == null) {
      return;
    }

    setState(() {
      _imageFile = File(imageFile.path);
    });
    
  }

  Future<void> _galleryPicture() async {
    final picker = ImagePicker();
    final imageFile = await picker.pickImage(source: ImageSource.gallery, maxWidth: 600);

    if (imageFile == null) {
      return;
    }

    setState(() {
      _imageFile = File(imageFile.path);
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black),
            ),
            child: _imageFile != null
                ? Image.file(
                    _imageFile!,
                    fit: BoxFit.cover,
                  )
                : Center(child: Text('No Image')),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.add_photo_alternate),
                onPressed: _galleryPicture,
              ),
              Text('เพิ่มรูปภาพ', style: TextStyle(fontSize: 20)),
            ],
          ),
          SizedBox(height: 20),
          IconButton(
            icon: Icon(Icons.camera),
            onPressed: _takePicture,
          ),
          Text('กล้องถ่ายภาพ', style: TextStyle(fontSize: 20)),
          SizedBox(height: 20),
          Container(
            width: 200, // Set the desired width
            child: ElevatedButton(
              onPressed: () {
                // Add logic to save the image
              },
              child: Text('Save', style: TextStyle(fontSize: 30)),
            ),
          ),
        ],
      ),
    );
  }
}
