// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:school_events/teacher/tabbar.dart';
import 'package:school_events/teacher/teacher_registration.dart';
import 'package:school_events/teacher/teacher_splash.dart';
import 'package:school_events/teacher/teacherstudent_list.dart';

class Teacher_Sign extends StatefulWidget {
  const Teacher_Sign({super.key});

  @override
  State<Teacher_Sign> createState() => _Teacher_SignState();
}

class _Teacher_SignState extends State<Teacher_Sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 290,top: 70),
              child: Text('Sign in',style: TextStyle(fontSize: 27),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200,top: 10),
              child: Text('sign into your account ',style: TextStyle(fontSize: 17),),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email Address'
                  ),
                ),
              ),
            ),
             SizedBox(
              width: 300,
               child: Padding(
                 padding: const EdgeInsets.only(top: 25),
                 child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password'
                  ),
                             ),
               ),
             ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Teacher_List(),));
                  }, child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold),))),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have an account?'),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Teacher_Registration(),));
                }, 
                child: Text('Sign up'))
              ],
            )
          ],
        ),
      ),
    );
  }
}