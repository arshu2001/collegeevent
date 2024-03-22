// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:school_events/teacher/teacher_addevent.dart';
import 'package:school_events/teacher/teacherevent_details1.dart';

class Teacher_Upcoming extends StatefulWidget {
  const Teacher_Upcoming({super.key});

  @override
  State<Teacher_Upcoming> createState() => _Teacher_UpcomingState();
}

class _Teacher_UpcomingState extends State<Teacher_Upcoming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25,top: 10),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Teacher_Details1(),));
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
                      child: Text('food festival',
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
            padding: const EdgeInsets.only(left: 25,top: 30),
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
                    child: Text('Chrismas',
                    style: TextStyle(fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                    ),
                  ),
                
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,top: 30),
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
                    child: Text('Musical Festival',
                    style: TextStyle(fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                    ),
                  ),
                
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Teacher_Add(),));
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 30,
                    child: Icon(Icons.add,size: 50,color: Colors.white,),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}