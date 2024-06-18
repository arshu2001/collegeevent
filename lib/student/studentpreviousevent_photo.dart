import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:school_events/student/studentPhoto_add.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StudentPreviousEventPhoto extends StatefulWidget {
  const StudentPreviousEventPhoto({super.key});

  @override
  State<StudentPreviousEventPhoto> createState() => _StudentPreviousEventPhotoState();
}

class _StudentPreviousEventPhotoState extends State<StudentPreviousEventPhoto> {
  // String?imgurl;
  // Future<void>fetchstudentimg()async{
  //   try {
  //     SharedPreferences spref = await SharedPreferences.getInstance();
  //     String? img = spref.getString('imgsId');
  //     print('Shared Preference Student Id : $img');

  //     if(img!.isNotEmpty){
  //       Stream<DocumentSnapshot> imgstream = FirebaseFirestore.instance
  //       .collection('student data')
  //       .doc(img)
  //       .snapshots();
  //       imgstream.listen((imgsnapshot) { 
  //       if(imgsnapshot.exists){
  //         setState(() {
  //          imgurl = imgsnapshot['imageurl'] ?? '';
  //         });
  //       }
  //      });
  //     }
  //   } catch (e) {
  //     print('error: $e');
  //   }
  // }
  // void initState() {
  //   super.initState();
  //   fetchstudentimg();
  // }
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
                        backgroundColor: Color.fromRGBO(68, 114, 178, 1),
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