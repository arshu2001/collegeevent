// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:school_events/teacher/tabbar.dart';
import 'package:school_events/teacher/teacherstudent_list.dart';

class Teacher_Registration extends StatefulWidget {
  const Teacher_Registration({super.key});

  @override
  State<Teacher_Registration> createState() => _Teacher_RegistrationState();
}

class _Teacher_RegistrationState extends State<Teacher_Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Registration',style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold),
            ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text('Name'),
              ),
            ],
          ),
          SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 25),
                child: Text('Department'),
              ),
            ],
          ),
          SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
            ),
          ),
           Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 25),
                child: Text('Phone No'),
              ),
            ],
          ),
          SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 25),
                child: Text('Email'),
              ),
            ],
          ),
          SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 25),
                child: Text('Password'),
              ),
            ],
          ),
          SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Tabbar(),));
              },
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text('Submit',style: TextStyle(color: Colors.white),)),
              ),
            ),
          )
        ],
      ),
    );
  }
}