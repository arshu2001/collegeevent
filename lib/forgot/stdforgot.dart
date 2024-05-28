import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:school_events/forgot/stdforgot1.dart';

class StdForgot extends StatefulWidget {
  const StdForgot({super.key});

  @override
  State<StdForgot> createState() => _StdForgotState();
}

class _StdForgotState extends State<StdForgot> {
  final formkey = GlobalKey<FormState>();
  var email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Future<bool> CheckEmailExists(String email)async{
      try {
        var querySnapshort = await FirebaseFirestore.instance
        .collection('student data').where('Email',isEqualTo: email).get();
        return querySnapshort.docs.isNotEmpty;
      } catch (e) {
        print('Error Checking email: $e');
        return false;
        
      }
    }
    return Scaffold(
      body:  SafeArea(
        child: Center(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                      width: 350,
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty ?? true){
                            return 'field cannot be empty';
                          }
                          return null;
                        },
                        controller: email,
                        decoration: InputDecoration(
                          hintText: 'Enter Email',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                        
                      ),
                       
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ElevatedButton(onPressed: () async{
                        if(formkey.currentState?.validate()?? true){
                          bool emailExists = await CheckEmailExists(email.text);
                          if(emailExists){
                            Navigator.pop(context);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => StdForgot1(Email: email.text,),));
                          }
                          else{
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Email does not exist'))
                            );
                          }
                        }
                      }, child:Text('Submit') ),
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}