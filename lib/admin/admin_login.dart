import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:school_events/admin/adminteacher_request.dart';
import 'package:school_events/admin/adminstudent_tabbar.dart';
import 'package:school_events/admin/adminteacher_tabbar.dart';
import 'package:school_events/admin/tabbar3.dart';
import 'package:school_events/admin/admin_tabbarrequestevent.dart';
import 'package:school_events/student/sttabbar_eventrequest.dart';

class Admin_Login extends StatefulWidget {
  const Admin_Login({super.key});

  @override
  State<Admin_Login> createState() => _Admin_LoginState();
}

class _Admin_LoginState extends State<Admin_Login> {
  bool isHiddenPassword = true;

  final formkey=GlobalKey<FormState>();
  var username = TextEditingController();
  var password = TextEditingController();
    Future<void>adminlogin()async{
    if(formkey.currentState!.validate()){
      try {
        String username1 = username.text.trim();
        String password1 = password.text.trim();
        var querySnapshot = await FirebaseFirestore.instance
        .collection('Admin data')
        .where('email',isEqualTo: username1)
        .limit(1)
        .get();

        var admindata =querySnapshot.docs.first.data();
        if(admindata['password'] == password1){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AdminTabbarRequestEvent(),));
        }
      } catch (e) {
        
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Form(

          child: Center(
            child: Container(
              height: 350,
              width: 360,
              color: Color.fromRGBO(68, 114, 178, 0.2),
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Login',
                  style: TextStyle(
                    color: Color.fromRGBO(68, 114, 178, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),
                  ),
                  SizedBox(
                    width: 290,
                    child: TextFormField(
                      controller: username,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Username',
                      ),
                 validator: (value) {
                  if(value?.isEmpty ?? true){
                    return 'please enter email';
                  }
                },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: 290,
                      child: TextFormField(
                        controller: password,
                        obscureText: isHiddenPassword,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Password',
                          suffixIcon: Icon(
                            Icons.visibility)
                        ),
                 validator: (value) {
                  if(value?.isEmpty ?? true){
                    return 'please enter email';
                  }
                },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 39),
                    child: InkWell(
                      onTap: () {
                        adminlogin();
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AdminTabbarRequestEvent(),));
                      },
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(68, 114, 178, 1),
                          borderRadius: BorderRadius.circular(6)
                        ),
                        child: Center(child: Text('Logoin',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,
                        color: Colors.white
                        ),)),
                        
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
