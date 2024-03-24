// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:school_events/admin/admin_splash.dart';
import 'package:school_events/admin/adminstudent_tabbar.dart';
import 'package:school_events/admin/adminteacher_tabbar.dart';
import 'package:school_events/student/students_login.dart';
import 'package:school_events/teacher/teacher_signin.dart';
import 'package:school_events/teacher/teacher_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Admin_Splash(),
    );
  }
}
