import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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

  
  @override
  Widget build(BuildContext context) {
    Future<void>studentlogin()async{
      if(formkey.currentState!.validate()){
        String email1 =email.text.trim();
        String password1 = password.text.trim();
        var querySnapshot = await FirebaseFirestore.instance
        .collection('student data')
        .where('Email',isEqualTo: email1)
        .limit(1)
        .get();
        if(querySnapshot.docs.isNotEmpty){
          var userData = querySnapshot.docs.first.data();
          if(userData['Password'] == password1){
            var storeId = userData['stdId'];
            if(storeId != null){
              SharedPreferences pref = await SharedPreferences.getInstance();
              await pref.setString('stdId', storeId);
            }  
            SharedPreferences pref = await SharedPreferences.getInstance();
            String? stdId = pref.getString('stdId');
            print('student Id: $stdId');
            
              email.clear();
              password.clear();

              Navigator.push(context, MaterialPageRoute(builder: (context) => TabbarStEvent(),));

            Fluttertoast.showToast(
            msg: 'Succesfully loggined',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0,
          );
            }else{
              print('Incorrect password');
              Fluttertoast.showToast(
              msg: 'Incorrect password',
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0,
        );
            }
          }else{
            print('User not Fount');
            Fluttertoast.showToast(
            msg: 'User Not Found',
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
        );
          
        }
      }
    }
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
                    child: Center(child: TextButton(onPressed: () {
                      studentlogin();
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