import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: StreamBuilder(stream: FirebaseFirestore.instance.collection('Request Event').snapshots(),
        builder: (context, snapshot) {
          if(!snapshot.hasData){
            return Center(child: CircularProgressIndicator(),);
          }
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
             var data = snapshot.data!.docs[index];
             return Padding(
               padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
               child: ListTile(
                tileColor: Color(0xFF3063A5),
                // leading: CircleAvatar(
                //   backgroundImage: NetworkImage(data['imageurl']),
                // ),
                title: Text('${data['Name']} request ${data['Event']}'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AdminRequestForStudent(data : data),));
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
               ),
             );
          },);
        },),
      ),
    );
  }
}