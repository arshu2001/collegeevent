// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
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
      body: StreamBuilder(stream: FirebaseFirestore.instance.collection('teacher event').snapshots(),
      builder: (context,AsyncSnapshot<QuerySnapshot> snapshot) {
        if(!snapshot.hasData){
         return Center(child: CircularProgressIndicator(),) ;
        }
        return ListView.builder(
          itemCount: snapshot.data!.docs.length,
          itemBuilder: (context, index) {
          var tchevent = snapshot.data!.docs[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: Color(0xFF3063A5),
              title: Text(tchevent['Event'],style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Teacher_Details1(event : tchevent),));
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
          );
        },);
      },
      ),
      floatingActionButton:
       Padding(
         padding: const EdgeInsets.only(bottom: 60),
         child: Container(
          height: 70,
          width: 70,
          child: FloatingActionButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Teacher_Add(),));
          },
          child: Icon(Icons.add,color: Colors.white,size: 40,),
          backgroundColor: Color(0xFF3063A5),
          shape: CircleBorder(),
          ),
               ),
       ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    
    );
  }
}