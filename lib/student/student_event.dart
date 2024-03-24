import 'package:flutter/material.dart';
import 'package:school_events/student/studentevent_register.dart';

class StudentEvent extends StatefulWidget {
  const StudentEvent({super.key});

  @override
  State<StudentEvent> createState() => _StudentEventState();
}

class _StudentEventState extends State<StudentEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 25),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => StudentEventRegister(),));
              },
              child: Container(
                height: 70,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,top: 20),
                  child: Text('food festival',
                  style: TextStyle(fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 25),
            child: Container(
              height: 70,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30,top: 20),
                child: Text('Christmas',
                style: TextStyle(fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
            Padding(
            padding: const EdgeInsets.only(left: 20,top: 25),
            child: Container(
              height: 70,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30,top: 20),
                child: Text('music festival',
                style: TextStyle(fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          
          

        ],
      ),
    );
  }
}