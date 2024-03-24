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
        title: Center(child: Text('Event Details')),
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
                    fontSize: 20,
                    color: Colors.blue
                  ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 20),
                  child: Row(
                    children: [
                      Text('Date'),
                      Padding(
                        padding: const EdgeInsets.only(left: 75),
                        child: Text(':      05/09/2025'),
                      ),
                      
                    ],
                  ),
                ),
                
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 30),
                  child: Row(
                    children: [
                      Text('Time'),
                      Padding(
                        padding: const EdgeInsets.only(left: 73),
                        child: Text(':      09.00 AM'),
                      ),
                      
                    ],
                  ),
                ),
                
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 30),
                  child: Row(
                    children: [
                      Text('Location'),
                      Padding(
                        padding: const EdgeInsets.only(left: 52),
                        child: Text(':      collage Groung'),
                      ),
                      
                    ],
                  ),
                ),
                
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
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text('Add Host',style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18
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
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)
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
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)
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