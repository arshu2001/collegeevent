// ignore_for_file: prefer_const_constructors, unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:school_events/forgot/tchforgot.dart';
import 'package:school_events/teacher/tabbar.dart';
import 'package:school_events/teacher/teacher_registration.dart';
import 'package:school_events/teacher/teacher_splash.dart';
import 'package:school_events/teacher/teacherstudent_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Teacher_Sign extends StatefulWidget {
  const Teacher_Sign({super.key});

  @override
  State<Teacher_Sign> createState() => _Teacher_SignState();
}

class _Teacher_SignState extends State<Teacher_Sign> {
  final formKey = GlobalKey<FormState>();
  var email = TextEditingController();
  var password = TextEditingController();
  Future<void> _teacherdata(String data) async {
    SharedPreferences preff = await SharedPreferences.getInstance();
    await preff.setString('teacherId', data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Stack(
            children: [
              // Row(
              //   children: [
              //     CustomPaint(
              //       size: Size(380,380), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              //       painter: RPSCustomPainter(),
              //     ),
              //   ],
              // ),
              Image.asset(
                'images/background.jpg',
                width: 520,
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 270, top: 70),
                      child: Text('SingIn',style:
                      TextStyle(fontSize: 27, fontWeight: FontWeight.w500),)

                      

                      ),
                  Padding(
                    padding: const EdgeInsets.only(right: 170, top: 10),
                    child: Text(
                      'sign into your account ',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 340,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFormField(
                        controller: email,
                        decoration: InputDecoration(hintText: 'Email Address'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter email';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 340,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: TextFormField(
                        controller: password,
                        decoration: InputDecoration(hintText: 'Password'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter password';
                          }
                          if (!RegExp(r'^(?=.*[0-9].*)').hasMatch(value!)) {
                            return 'email must contain alphabat and numbers';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        width: 340,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(68, 114, 178, 1),
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                            child: TextButton(
                                onPressed: () async{
                                  if(formKey.currentState?.validate() ?? false){
                                    String email1 = email.text.trim();
                                    String password1 =password.text.trim();
                                    var querysnap = await FirebaseFirestore
                                    .instance.collection('Teacher Data')
                                    .where('Email',isEqualTo: email1)
                                    .limit(1)
                                    .get();


                                  if(querysnap.docs.isNotEmpty){
                                    var userdata = querysnap.docs.first.data();
                                    if(userdata['Password'] == password1){
                                      var teacherId = userdata['teacherId'] as String?;
                                      if(teacherId != null){
                                        await _teacherdata(teacherId);
                                      }
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Tabbar(),)); 
                                    }
                                  } 
                                  }
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) => Teacher_List(),
                                  //     ));
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ))),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont have an account?'),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Teacher_Registration(),
                                ));
                          },
                          child: TextButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              String Email = email.text.trim();
                            }
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Teacher_Registration(),));
                          },
                          child: Text(
                            'SignUp',
                            style: TextStyle(
                                 fontWeight: FontWeight.w500),
                          ))
                          )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TchForgot(),));
                    }, child: Text('Forgot Password')),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 77, 149, 237)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8323333, size.height * 0.0030000);
    path_0.quadraticBezierTo(size.width * 0.8228333, size.height * 0.3627500,
        size.width * 0.9983333, size.height * 0.3333333);
    path_0.quadraticBezierTo(size.width * 0.9992083, size.height * 0.0843333,
        size.width * 0.9995000, size.height * 0.0013333);
    path_0.cubicTo(
        size.width * 0.9577083,
        size.height * 0.0017500,
        size.width * 0.9577083,
        size.height * 0.0017500,
        size.width * 0.8323333,
        size.height * 0.0030000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
