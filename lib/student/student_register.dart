import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:school_events/student/students_login.dart';
import 'package:school_events/student/tabbarst_event.dart';

class StudentRegister extends StatefulWidget {
  const StudentRegister({super.key});

  @override
  State<StudentRegister> createState() => _StudentRegisterState();
}

class _StudentRegisterState extends State<StudentRegister> {
  final formKey = GlobalKey<FormState>();
  var name = TextEditingController();
  var department = TextEditingController();
  var registerno = TextEditingController();
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
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
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
                    child: Text('Register No'),
                  ),
                ],
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: TextFormField(
                  controller: registerno,
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
                    return 'please enter register number';
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
                    return 'please enter email';
                  }
                },
                ),
              ),
               Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25,top: 25),
                    child: Text('password'),
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
                    return 'please enter password';
                  }
                },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: InkWell(
                  onTap: () async{
                    if(formKey.currentState?.validate() ?? false){
                      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email.text, password: Password.text);
                      if(userCredential.user!=null){
                        await FirebaseFirestore.instance.collection('student data').doc(userCredential.user!.uid).set(
                          {
                            'Name':name.text,
                            'Depatment':department.text,
                            'Register' :registerno.text,
                            'Phone':phone.text,
                            'Email':email.text,
                            'Password':Password.text
                          }
                        );
                      }
                        Navigator.push(context, MaterialPageRoute(builder: (context) => StudentLogin(),));
                    }
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => TabbarStEvent(),));
                  },
                  child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text('Submit',style: TextStyle(color: Colors.white),)),
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