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
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue[100]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Onam Festival',style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text('Date'),
                              Padding(
                                padding: const EdgeInsets.only(left: 36),
                                child: Text(':  28/28/2023'),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text('Time'),
                              Padding(
                                padding: const EdgeInsets.only(left: 34),
                                child: Text(':  9:00 AM'),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text('Location'),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(':  Collage Hall'),
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
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[100]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Music Festival',style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text('Date'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 36),
                                  child: Text(':  26/04/2023'),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text('Time'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 34),
                                  child: Text(':  6:00 AM'),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text('Location'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(':  Collage Hall'),
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