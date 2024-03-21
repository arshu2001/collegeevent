import 'package:flutter/material.dart';
import 'package:school_events/admin/admin_login.dart';

class Admin_Splash extends StatefulWidget {
  const Admin_Splash({super.key});

  @override
  State<Admin_Splash> createState() => _Admin_SplashState();
}

class _Admin_SplashState extends State<Admin_Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Admin_Login(),));
          },
          child: Container(
            color: Colors.blue[500],
            child: Center(
              child: Text('ColleagueApp',style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.w700,fontSize: 40
              ),),
            ),
          ),
        ),
      ),
    );
  }
}