import 'package:flutter/material.dart';
import 'package:school_events/student/tabbarstd_detailphoto.dart';

class StudentPreviousEvent extends StatefulWidget {
  const StudentPreviousEvent({super.key});

  @override
  State<StudentPreviousEvent> createState() => _StudentPreviousEventState();
}

class _StudentPreviousEventState extends State<StudentPreviousEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Event')),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 25),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TabbarStDetailPhoto(),));
              },
              child: Container(
                height: 70,
                width: 360,
                decoration: BoxDecoration(
                  color: Color(0xFF3063A5),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,),
                  child: Row(
                    children: [
                      Text('Onam festival',
                      style: TextStyle(fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 25),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 70,
                width: 360,
                decoration: BoxDecoration(
                  color: Color(0xFF3063A5),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,),
                  child: Row(
                    children: [
                      Text('Music festival',
                      style: TextStyle(fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}