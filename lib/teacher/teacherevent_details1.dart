// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Teacher_Details1 extends StatefulWidget {
  var event;
  Teacher_Details1({super.key, required this.event});
  

  @override
  State<Teacher_Details1> createState() => _Teacher_Details1State();
}

class _Teacher_Details1State extends State<Teacher_Details1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Details')),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Column(

          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[100]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Date'),
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
                      )
                    ],
                                    ),
                                    Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(widget.event['Date']),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(widget.event['Time']),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(widget.event['Location']),
                      )
                    ],
                                    )
                                  ],
                                ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20),
              child: Row(
                children: [
                  Text('Participations',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 70,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('images/profile.jpg')),
                        title: Text('Student Name',
                        style: TextStyle(
                          fontWeight: FontWeight.w500
                        ),
                        ),
                        subtitle: Text('Department'),
                        trailing: IconButton(onPressed: () {
                          showDialog(context: context, builder: (context) {
                            return AlertDialog(
                              backgroundColor: Colors.grey[200],
                              title: Text('Conform Co-ordinator'),
                              actionsAlignment: MainAxisAlignment.center,
                              actions: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text('Submit',style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16
                                      ),)),
                                  ),
                                )
                              ],
                            );
                            
                          },);
                        }, icon: Icon(CupertinoIcons.clear_circled_solid,color: Colors.blue,)),
                      ),
                    ),
                  );
                },),
            )
            
            
          ],
        ),
      ),
      
    );
  }
}