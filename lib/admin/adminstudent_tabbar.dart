import 'package:flutter/material.dart';
import 'package:school_events/admin/adminrequestfor_student.dart';

class AdminStudentTabbar extends StatefulWidget {
  const AdminStudentTabbar({super.key});

  @override
  State<AdminStudentTabbar> createState() => _AdminStudentTabbarState();
}

class _AdminStudentTabbarState extends State<AdminStudentTabbar> {
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AdminRequestForStudent(),));
                  },
                  child: Container(
                    height: 55,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(68, 114, 178, 1),
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,top: 5),
                      child: Row(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage('images/profile.jpg'),),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('Adhil Request Food Festival',
                            style: TextStyle(fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
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
                      color: Color.fromRGBO(68, 114, 178, 1),
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,top: 3),
                      child: Row(
                        children: [
                          CircleAvatar(backgroundImage: AssetImage('images/profile.jpg'),),
                          Padding(
                            padding: const EdgeInsets.only(left:20),
                            child: Text('Raja Request Christmas',
                            style: TextStyle(fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
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