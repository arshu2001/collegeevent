// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AdminPrevious extends StatefulWidget {
  const AdminPrevious({super.key});

  @override
  State<AdminPrevious> createState() => _AdminPreviousState();
}

class _AdminPreviousState extends State<AdminPrevious> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 110,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color.fromRGBO(68, 114, 178, 0.2),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 10),
                          child: Text('Onam Festival',style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(68, 114, 178, 1),
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Date'),
                                  Text('Time'),
                                  Text('Location')
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(':'),
                                      Text(':'),
                                      Text(':')
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('08/28/2023'),
                                      Text('9.00 AM'),
                                      Text('College Hall')
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),


                          
                      ],
                    ),
                  ),
                ],
              ),
               Padding(
                 padding: const EdgeInsets.only(top: 20),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 110,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color.fromRGBO(68, 114, 178, 0.2),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10),
                            child: Text('Music Festival',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(68, 114, 178, 1),
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Date'),
                                    Text('Time'),
                                    Text('Location')
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(':'),
                                        Text(':'),
                                        Text(':')
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('26/04/2023'),
                                        Text('6.00 PM'),
                                        Text('College Hall')
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                 
                 
                            
                        ],
                      ),
                    ),
                  ],
                               ),
               ),
             
          ],
        ),
      ),
    );
  }
}