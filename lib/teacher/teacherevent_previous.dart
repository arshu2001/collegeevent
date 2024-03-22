// ignore_for_file: prefer_const_constructors, unused_import, camel_case_types

import 'package:flutter/material.dart';
import 'package:school_events/teacher/tabbar2.dart';
import 'package:school_events/teacher/teacherevent_details.dart';

class Teacher_Previous extends StatefulWidget {
  const Teacher_Previous({super.key});

  @override
  State<Teacher_Previous> createState() => _Teacher_PreviousState();
}

class _Teacher_PreviousState extends State<Teacher_Previous> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Tabbar2(),));
                  },
                  child: Container(
                    height: 55,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50,top: 15),
                      child: Text('Onam festival',
                      style: TextStyle(fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                      ),
                    ),
                  
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10),
            child: Row(
              children: [
                Container(
                  height: 55,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50,top: 15),
                    child: Text('Music festival',
                    style: TextStyle(fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                    ),
                  ),
                
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}