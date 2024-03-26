import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_events/admin/admin_login.dart';
import 'package:school_events/admin/admin_splash.dart';
import 'package:school_events/student/students_login.dart';
import 'package:school_events/teacher/teacher_splash.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Admin_Splash(),));
              },
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text('Admin',style: TextStyle(
                    fontSize: 20
                  ),),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Teacher_Splash(),));
              },
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text('Teacher',style: TextStyle(
                    fontSize: 20
                  ),),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => StudentLogin(),));
            },
            child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text('Student',style: TextStyle(
                  fontSize: 20
                ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}