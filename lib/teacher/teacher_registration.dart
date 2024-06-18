// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:school_events/teacher/tabbar.dart';
import 'package:school_events/teacher/teacher_signin.dart';
import 'package:school_events/teacher/teacherstudent_list.dart';

class Teacher_Registration extends StatefulWidget {
  const Teacher_Registration({super.key});

  @override
  State<Teacher_Registration> createState() => _Teacher_RegistrationState();
}

class _Teacher_RegistrationState extends State<Teacher_Registration> {
  final formKey= GlobalKey<FormState>();
  var name = TextEditingController();
  var department = TextEditingController();
  var phone = TextEditingController();
  var email = TextEditingController();
  var Password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Registration',style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold),
            ),
        ),
      ),
      body: Form(
        key: formKey,
        child:SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text('Name'),
                  ),
                ],
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  validator: (value) {
                    if(value?.isEmpty ?? true){
                      return 'please enter name';
                    }
                  },
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25,top: 25),
                    child: Text('Department'),
                  ),
                ],
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: TextFormField(
                  controller: department,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  validator: (value) {
                    if(value?.isEmpty ?? true){
                      return 'please enter department';
                    }
                  },
                ),
              ),
               Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25,top: 25),
                    child: Text('Phone No'),
                  ),
                ],
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: TextFormField(
                  controller: phone,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  validator: (value) {
                    if(value?.isEmpty ?? true){
                      return 'please enter phone number';
                    }
                  },
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25,top: 25),
                    child: Text('Email'),
                  ),
                ],
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  validator: (value) {
                    if(value?.isEmpty ?? true){
                      return 'feild is empty';
                    }
                  },
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25,top: 25),
                    child: Text('Password'),
                  ),
                ],
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: TextFormField(
                  controller: Password,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  validator: (value) {
                    if(value?.isEmpty ?? true){
                      return 'feild is empty';
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: InkWell(
                  onTap: () async{
                    
                    if(formKey.currentState?.validate() ?? false){
                      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: email.text, password: Password.text
                        );
                        String uid = userCredential.user!.uid;
                      if(userCredential.user!=null){
                        await FirebaseFirestore.instance.collection('Teacher Data').doc(uid).set(
                          {
                            'Name':name.text,
                            'Depatment':department.text,
                            'Phone':phone.text,
                            'Email':email.text,
                            'Password':Password.text,
                            'tdId':uid
          
                          }
                        );
                      }
          
                      //  Navigator.push(context, MaterialPageRoute(builder: (context) => Tabbar(),)); 
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Teacher_Sign(),)); 
                      }
                  },
                  child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Center(child: Text('Submit',style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.w500
                    ),)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}