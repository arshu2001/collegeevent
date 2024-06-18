// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class AdminRequestForStudent extends StatefulWidget {
  QueryDocumentSnapshot<Map<String, dynamic>> data;
  AdminRequestForStudent({super.key, required this.data, });

  @override
  State<AdminRequestForStudent> createState() => _AdminRequestForStudentState();
}

class _AdminRequestForStudentState extends State<AdminRequestForStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Center(child: Text('details')),
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
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.data!['Name'],
                  style: TextStyle(
                    fontSize: 20
                  ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Department'),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text('Request Event'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text('Date'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text('Time'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text('Location'),
                    )
                  ],
                ),
                Row(
                  children: [ 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(':'),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(':'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(':'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(':'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(':'),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Bcom'),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(widget.data!['Event']),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(widget.data!['Date']),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(widget.data!['Time']),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(widget.data!['Location']),
                        )
                      ],
                    )
                  ],
                )
                

              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16,top: 20),
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
                    child: Text(widget.data!['Description']),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 165,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(68, 114, 178, 1),
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: Center(child: Text('Accept',style: TextStyle(
                        color:Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                        )),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 165,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(68, 114, 178, 1),
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: Center(child: Text('Reject',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                        )),
                    ),
                  ),
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}