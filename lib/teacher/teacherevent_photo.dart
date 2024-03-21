import 'package:flutter/material.dart';

class Teacher_Photo extends StatefulWidget {
  const Teacher_Photo({super.key});

  @override
  State<Teacher_Photo> createState() => _Teacher_PhotoState();
}

class _Teacher_PhotoState extends State<Teacher_Photo> {
  // XFile? filepicker;
  // File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Photo')),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () async{
            
            
          }, child: Text('add'))
        ],
      ),
    );
  }
}