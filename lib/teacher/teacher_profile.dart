import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:school_events/teacher/teacher_editprofile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Teacher_Profile extends StatefulWidget {
  const Teacher_Profile({super.key});

  @override
  State<Teacher_Profile> createState() => _Teacher_ProfileState();
}

class _Teacher_ProfileState extends State<Teacher_Profile> {
  final TextEditingController name = TextEditingController();
  final TextEditingController department = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  String? imageurl;

  Future<void>fetchteacherdetails()async{
   try {
     SharedPreferences spref = await SharedPreferences.getInstance();
      String? uid = spref.getString('tdId');
      print('Shared Preference Teacher Id : $uid');

      if(uid!.isNotEmpty){
        Stream<DocumentSnapshot> TeachertStream = FirebaseFirestore.instance
        .collection('Teacher Data')
        .doc(uid)
        .snapshots();

        TeachertStream.listen((teacherSnapshot)async { 
          if(teacherSnapshot.exists){
            setState(() {
              name.text = teacherSnapshot['Name'] ?? '';
              department.text = teacherSnapshot['Depatment'] ?? '';
              email.text = teacherSnapshot['Email'] ?? '';
              phone.text = teacherSnapshot['Phone'] ?? '';
              imageurl = teacherSnapshot['imageurl'] ?? '';
              print('imageprofile:$imageurl');

            });
          }
        });
      }
   } catch (e) {
      print('error:$e');
      return null;
   } 
  }
   void initState() {
    super.initState();
    fetchteacherdetails();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        title: Center(child: Text('Profile',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment
              .center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage:imageurl !=null && imageurl!.isNotEmpty
                  ? NetworkImage(imageurl!):null,
                child:  imageurl == null || imageurl!.isEmpty
                ? Icon(Icons.person,size: 50,):null, ),
              ],
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(top: 20),
             child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text('Name'),
                ),
              ],
                       ),
           ),
          SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
              controller: name,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(top: 20),
             child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text('Department'),
                ),
              ],
                       ),
           ),
          SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
              controller: department,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
            ),
          ),
          //  Padding(
          //    padding: const EdgeInsets.only(top: 20),
          //    child: Row(
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.only(left: 25),
          //         child: Text('Register No'),
          //       ),
          //     ],
          //              ),
          //  ),
          // SizedBox(
          //   width: 350,
          //   height: 50,
          //   child: TextFormField(
          //     decoration: InputDecoration(
          //       focusedBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(5)
          //       ),
          //       enabledBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(5)
          //       )
          //     ),
          //   ),
          // ),
           Padding(
             padding: const EdgeInsets.only(top: 20),
             child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text('Phone No'),
                ),
              ],
                       ),
           ),
          SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
              controller: phone,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(top: 30),
             child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text('Email'),
                ),
              ],
                       ),
           ),
          SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
              controller: phone,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(left: 22,top: 20),
             child: Row(
               children: [
                 InkWell(
                  onTap: () {
                    fetchteacherdetails();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Teacher_Editprofile(),));
                  },
                   child: Container(
                     width: 350,
                     height: 50,
                     decoration: BoxDecoration(
                       color: Colors.blue,
                       borderRadius: BorderRadius.circular(10)
                     ),
                     child: Center(child: Text('Edit',style: TextStyle(color: Colors.white),)),
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