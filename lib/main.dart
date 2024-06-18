// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:school_events/admin/admin_splash.dart';
import 'package:school_events/admin/adminstudent_tabbar.dart';
import 'package:school_events/admin/adminteacher_tabbar.dart';
import 'package:school_events/firebase_options.dart';
import 'package:school_events/home1.dart';
import 'package:school_events/student/students_login.dart';
import 'package:school_events/teacher/teacher_signin.dart';
import 'package:school_events/teacher/teacher_splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
      home: const Home1(),
    );
  }
}

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:school_events/phone.dart';

// import 'otp.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//      initialRoute: 'phone',
//      routes: {
//       'phone': (context)=>const MyPhone(),
//       'otp':(context)=>const MyOtp(),
//       // 'home':(context) => HomePage()
//      }

//     );
//   }
// }