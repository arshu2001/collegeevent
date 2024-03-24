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
            color: Colors.grey[200],
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login',
                style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(
                  width: 290,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
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
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text('Logoin',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
                      
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