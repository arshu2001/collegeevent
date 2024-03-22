import 'package:flutter/material.dart';

class Teacher_Notification extends StatefulWidget {
  const Teacher_Notification({super.key});

  @override
  State<Teacher_Notification> createState() => _Teacher_NotificationState();
}

class _Teacher_NotificationState extends State<Teacher_Notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('Notification',
        style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 158,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue[200]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Onam',style: TextStyle(
                    fontSize: 18
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('We are delighted to announce the upcoming Onam Program, a celebration of joy, culture, and togetherness! The college principal has approved the event, and we cant wait to make it a memorable occasion for all.'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}