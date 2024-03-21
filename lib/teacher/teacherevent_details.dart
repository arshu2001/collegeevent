import 'package:flutter/material.dart';

class Teacher_Details extends StatefulWidget {
  const Teacher_Details({super.key});

  @override
  State<Teacher_Details> createState() => _Teacher_DetailsState();
}

class _Teacher_DetailsState extends State<Teacher_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        title: Center(child: Text('Details',
        style: TextStyle(fontWeight: FontWeight.bold),
        )),
        
      ),
    );
  }
}