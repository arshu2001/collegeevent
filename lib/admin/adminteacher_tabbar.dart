import 'package:flutter/material.dart';
import 'package:school_events/admin/adminrequestfor_teacher.dart';

class AdminTeacherTabbar extends StatefulWidget {
  const AdminTeacherTabbar({super.key});

  @override
  State<AdminTeacherTabbar> createState() => _AdminTeacherTabbarState();
}

class _AdminTeacherTabbarState extends State<AdminTeacherTabbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Padding(
            padding: const EdgeInsets.only(left: 25,top: 10),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AdminRequestForTeacher(),));
                  },
                  child: Container(
                    height: 55,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30,top: 15),
                      child: Text('Anandu Request Food Festival',
                      style: TextStyle(fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                      ),
                    ),
                  
                  ),
                ),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 25,top: 10),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 55,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30,top: 15),
                      child: Text('Akshay Request Chritmas',
                      style: TextStyle(fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                      ),
                    ),
                  
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}