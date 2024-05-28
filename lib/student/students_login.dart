import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:school_events/forgot/stdforgot.dart';
import 'package:school_events/student/student_register.dart';
import 'package:school_events/student/tabbarst_event.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StudentLogin extends StatefulWidget {
  const StudentLogin({super.key});

  @override
  State<StudentLogin> createState() => _StudentLoginState();
}

class _StudentLoginState extends State<StudentLogin> {
  final formkey=GlobalKey<FormState>();
  var email = TextEditingController();
  var password = TextEditingController();

  Future<void>studentdata(String data) async{
    SharedPreferences std = await SharedPreferences.getInstance();
    await std.setString('studentId', data);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formkey,
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
                    controller: email,
                    decoration: InputDecoration(
                      hintText: 'Email Address'
                    ),
                     validator: (value) {
                  if(value?.isEmpty ?? true){
                    return 'please enter email';
                  }
                },
                  ),
                ),
              ),
               SizedBox(
                width: 300,
                 child: Padding(
                   padding: const EdgeInsets.only(top: 25),
                   child: TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                      hintText: 'Password'
                    ),
                     validator: (value) {
                  if(value?.isEmpty ?? true){
                    return 'please enter password';
                  }
                },
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
                    child: Center(child: TextButton(onPressed: () async{
                    if(formkey.currentState?.validate() ?? false){
                       String email1 = email.text.trim(); 
                       String password1 = password.text.trim();
                       var querysnap = await FirebaseFirestore
                       .instance.collection('student data')
                       .where('Email',isEqualTo: email1)
                       .limit(1)
                       .get();


                    if(querysnap.docs.isNotEmpty){
                      var stddata = querysnap.docs.first.data();
                      if(stddata['Password'] == password1){
                        var studentId = stddata['studentId'] as String?;
                        if(studentId != null){
                          await studentdata(studentId);
                        }
                         Navigator.push(context, MaterialPageRoute(builder: (context) => TabbarStEvent(),));
                      }
                    }
                    }
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => TabbarStEvent(),));
                    }, child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold),))),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an account?'),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => StudentRegister(),));
                  }, 
                  child: Text('Sign up'))
                ],
              ),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => StdForgot(),));
              }, child: Text('Forgot Password'))
            ],
          ),
        ),
      ),
    );
  }
}