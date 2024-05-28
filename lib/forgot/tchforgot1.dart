import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:school_events/teacher/teacher_signin.dart';

class TchForgot1 extends StatefulWidget {
  String Email;
  TchForgot1({super.key,required this.Email});

  @override
  State<TchForgot1> createState() => _TchForgot1State();
}

class _TchForgot1State extends State<TchForgot1> {
  final formkey = GlobalKey<FormState>();
  var password = TextEditingController();
  var cpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Align(
          alignment: Alignment.center,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Padding(
                 padding: const EdgeInsets.only(top: 10),
                 child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: password,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      enabledBorder: OutlineInputBorder()
                    ),
                    validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter new password';
                }
                return null;
              },
                  ),
                             ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 10),
                 child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: cpassword,
                    decoration: InputDecoration(
                      hintText: 'Conform Password',
                      enabledBorder: OutlineInputBorder()
                    ),
                     validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Please enter password';
                }
                return null;
              },
                  ),
                             ),
               ),
               ElevatedButton(onPressed: () async{
                if(cpassword.text == password.text){
                  QuerySnapshot querySnapshot = await FirebaseFirestore.instance
                  .collection('Teacher Data')
                  .where('Email',isEqualTo: widget.Email).get();
                  if(querySnapshot.docs.isNotEmpty){
                    DocumentReference userDoctch = querySnapshot.docs.first.reference;
                    await userDoctch.update({
                      'Passwor' : password.text
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Password Updated'))
                    );
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Teacher_Sign(),));
                  }
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Password does not match'))
                  );
                }

               }, child: Text('submit'))
            ],
          ),
        ),
      ),
    );
  }
}