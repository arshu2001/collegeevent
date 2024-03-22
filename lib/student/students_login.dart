import 'package:flutter/material.dart';
import 'package:school_events/student/student_register.dart';

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
                  controller: email,
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
                  controller: password,
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
                    Navigator.pop(context);
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
            )
          ],
        ),
      ),
    );
  }
}