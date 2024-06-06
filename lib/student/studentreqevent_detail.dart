// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class StudentrqeventDetail extends StatefulWidget {
  var event;
  StudentrqeventDetail({super.key, required this.event,});

  @override
  State<StudentrqeventDetail> createState() => _StudentrqeventDetailState();
}

class _StudentrqeventDetailState extends State<StudentrqeventDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Details')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/profile.jpg'),),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name'),
                       
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('Request Event'),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('Date'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('Time'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('Location'),
                      )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(':'),
                     
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(':'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(':'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(':'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(':'),
                      )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(widget.event['Name']),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(widget.event['Event']),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(widget.event['Date']),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10),
                        child: Text(widget.event['Time']),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(widget.event['Location']),
                      )
              ],
            ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 10),
                  child: Text('Host',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18
                  ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/profile.jpg'),),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 23,top: 9),
                              child: Text('Host'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('Department'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 10),
                  child: Text('Description  :',style: TextStyle(
                    fontSize: 20
                  ),),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Container(
                    height: 110,
                    width: 360,
                    child: Text(widget.event['Description']),
                  ),
                )
              ],
            )
            
          ],
        ),
      ),
    );
  }
}