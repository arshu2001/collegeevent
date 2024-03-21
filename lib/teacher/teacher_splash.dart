import 'package:flutter/material.dart';
import 'package:school_events/teacher/teacher_signin.dart';

class Teacher_Splash extends StatefulWidget {
  const Teacher_Splash({super.key});

  @override
  State<Teacher_Splash> createState() => _Teacher_SplashState();
}

class _Teacher_SplashState extends State<Teacher_Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Teacher_Sign(),));
          },
          child: Container(
            color: Colors.blue[500],
            child: Center(
              child: Text('ColleagueApp',style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.w700,fontSize: 40
              ),),
            ),
          ),
        ),
      ),
    );
  }
}