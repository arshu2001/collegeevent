// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminEventUpcomingDetails extends StatefulWidget {
  const AdminEventUpcomingDetails({super.key});

  @override
  State<AdminEventUpcomingDetails> createState() => _AdminEventUpcomingDetailsState();
}

class _AdminEventUpcomingDetailsState extends State<AdminEventUpcomingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Event Details',style: TextStyle(
          fontWeight: FontWeight.w500
        ),)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Food Festival',
                  style: TextStyle(
                    fontSize: 22,
                    color: Color.fromRGBO(68, 114, 178, 1)
                  ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Date'),
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
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('05/09/2025'),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text('9.00 AM'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text('College Groung'),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16,top: 10),
                  child: Text('Description  :',style: TextStyle(
                    fontSize: 22
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
                    child: Text('traditional genres such as folk and classical music, a music festival can be defined as a community event, with performances of singing and instrument playing, that is often presented with a theme such as a music genre '),
                  ),
                )
              ],
            ),
                        Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 10),
                  child: Text('Host',
                  style: TextStyle(
                    color: Color.fromRGBO(68, 114, 178, 1),
                    fontSize: 22
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
                      color: Color.fromRGBO(68, 114, 178, 0.2),
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
                              padding: const EdgeInsets.only(right: 20,top: 9),
                              child: Text('Name'),
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
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text('Add Host',style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20
                    ),),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 290),
                      child: Icon(CupertinoIcons.chevron_down,size: 40,),
                    ),
                  ),
                )
              ],

            ),
            Padding(
              padding: const EdgeInsets.only(top: 110),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(68, 114, 178, 1),
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Center(child: Text('Add Host',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                      )),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(68, 114, 178, 1),
                          borderRadius: BorderRadius.circular(6)
                        ),
                        child: Center(child: Text('Conform',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                          )),
                      ),
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