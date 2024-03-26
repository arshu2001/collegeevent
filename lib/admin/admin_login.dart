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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
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
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Username',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: 290,
                    child: TextFormField(
                      obscureText: isHiddenPassword,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Password',
                        suffixIcon: Icon(
                          Icons.visibility)
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 39),
                  child: InkWell(
                    onTap: () {
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
    );
  }
}