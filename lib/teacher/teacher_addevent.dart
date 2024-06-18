// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:school_events/teacher/tabbar1.dart';
import 'package:school_events/teacher/teacherevent_upcoming.dart';

class Teacher_Add extends StatefulWidget {
  const Teacher_Add({super.key});

  @override
  State<Teacher_Add> createState() => _Teacher_AddState();
}

class _Teacher_AddState extends State<Teacher_Add> {
  var name = TextEditingController();
  var event = TextEditingController();
  var date = TextEditingController();
  var time = TextEditingController();
  var location = TextEditingController();
  var description = TextEditingController();
  final formkey=GlobalKey<FormState>();

  Future<void>teacheraddevent()async{
    await FirebaseFirestore.instance.collection('teacher event').doc()
    .set({
      'Name':name.text,
      'Event':event.text,
      'Date':date.text,
      'Time':time.text,
      'Location':location.text,
      'Description':description.text
    });
    name.clear();
    event.clear();
    date.clear();
    time.clear();
    location.clear();
    description.clear();
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('event requested')));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        title: Center(
          child: Text('Event')),
      ),
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text('Event Name',style: TextStyle(fontSize: 16),),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: TextFormField(
                  controller: event,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                  ),
                )),
                Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: Row(
                               children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text('Name',style: TextStyle(fontSize: 16),),
                    ),
                               ],
                             ),
                 ),
              SizedBox(
                height: 50,
                width: 350,
                child: TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                  ),
                )),
                 Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: Row(
                               children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text('Date',style: TextStyle(fontSize: 16),),
                    ),
                               ],
                             ),
                 ),
              SizedBox(
                height: 50,
                width: 350,
                child: TextFormField(
                  controller: date,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                  ),
                )),
                 Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: Row(
                               children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text('Time',style: TextStyle(fontSize: 16),),
                    ),
                               ],
                             ),
                 ),
                 SizedBox(
                height: 50,
                width: 350,
                child: TextFormField(
                  controller: time,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                  ),
                )),
                 Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: Row(
                               children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text('Location',style: TextStyle(fontSize: 16),),
                    ),
                               ],
                             ),
                 ),
                  SizedBox(
                height: 50,
                width: 350,
                child: TextFormField(
                  controller: location,
                  // maxLines: 10,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                  ),
                )),
                Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: Row(
                               children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text('Description',style: TextStyle(fontSize: 16),),
                    ),
                               ],
                             ),
                 ),
                SizedBox(
                height: 200,
                width: 350,
                child: TextFormField(
                  controller: description,
                  maxLines: 10,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                  ),
                )),
                InkWell(
                  onTap: () {
                    teacheraddevent();
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text('Submit',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                        )),
                    ),
                  ),
                )
                
            ],
          ),
        ),
      ),
    );
  }
}