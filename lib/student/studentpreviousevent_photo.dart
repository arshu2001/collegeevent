import 'package:flutter/material.dart';
import 'package:school_events/student/studentPhoto_add.dart';

class StudentPreviousEventPhoto extends StatefulWidget {
  const StudentPreviousEventPhoto({super.key});

  @override
  State<StudentPreviousEventPhoto> createState() => _StudentPreviousEventPhotoState();
}

class _StudentPreviousEventPhotoState extends State<StudentPreviousEventPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Photo')),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => StudentPhotoAdd(),));
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 190),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 30,
                        child: Icon(Icons.add,size: 50,color: Colors.white,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}