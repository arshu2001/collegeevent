import 'package:flutter/material.dart';
import 'package:school_events/teacher/teacherstudent_detail.dart';

class Teacher_List extends StatefulWidget {
  const Teacher_List({super.key});

  @override
  State<Teacher_List> createState() => _Teacher_ListState();
}

class _Teacher_ListState extends State<Teacher_List> {
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
        actions: [
          IconButton(onPressed: () {
            
          }, icon: Icon(Icons.person_3_outlined)),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(onPressed: () {
          
            }, icon: Icon(Icons.notifications_active)),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Teacher_Stdetail(),));
              },
              child: Container(
                width: 200,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: ListTile(
                  leading: CircleAvatar(backgroundImage: AssetImage('images/profile.jpg',)),
                  title: Text('Student Name'),
                  subtitle: Text('Department'),
                ),
              ),
            ),
          );
        },),
    );
  }
}