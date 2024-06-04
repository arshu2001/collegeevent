import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:school_events/student/student_profile.dart';
import 'package:school_events/student/tabbarst_event.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StudentProfile1 extends StatefulWidget {
  const StudentProfile1({super.key});

  @override
  State<StudentProfile1> createState() => _StudentProfile1State();
}

class _StudentProfile1State extends State<StudentProfile1> {
  var name=TextEditingController();
  var department=TextEditingController();
  var register=TextEditingController();
  var phonenumber=TextEditingController();
  var email=TextEditingController();
  XFile? pick;
  File? image;
  Future<void> ProfileImg()async{
    if(image!=null){
      try {
        final reff = FirebaseStorage.instance
        .ref()
        .child('profile')
        .child(DateTime.now().microsecondsSinceEpoch.toString());
        await reff.putFile(image!);
        final imageurl = await reff.getDownloadURL();
        Navigator.push(context, MaterialPageRoute(builder: (context) => StudentProfiile(image:image),));
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: 
                              Text('error'),
        ));

      }
    }
  }
  Future<void>setstudentdetails()async{
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? uid = pref.getString('stdId');
      print('student Id: $uid');

      if(uid!.isNotEmpty){
        Stream<DocumentSnapshot> studentStream = FirebaseFirestore.instance.collection('student data').doc(uid).snapshots();
        studentStream.listen((studentSnapshot) { 
          if(studentSnapshot.exists){
            setState(() {
              name.text = studentSnapshot['Name'] ?? '';
              department.text = studentSnapshot['Depatment'] ?? '';
              register.text = studentSnapshot['Register'] ?? '';
              email.text = studentSnapshot['Email'] ?? '';
              phonenumber.text = studentSnapshot['Phone'] ?? '';
            });
          }
        });
      }
    } catch (e) {
      print('error:$e');
    }
  }
   void initState() {
    super.initState();
    setstudentdetails();
  }
  Future<void>editstudentprofile()async{
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? uid = pref.getString('stdId');
      if(uid!=null){
        await FirebaseFirestore.instance.collection('student data').doc(uid).update({
          'Name':name.text,
          'Depatment':department.text,
          'Register' :register.text,
          'Phone':phonenumber.text,
          'Email':email.text,
        });
        await pref.setString('Name',name.text);
        await pref.setString('Department', department.text);
        await pref.setString('Register', register.text);
        await pref.setString('Phone', phonenumber.text);
        await pref.setString('Email', email.text);

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Profile Updated')));
        Navigator.push(context, MaterialPageRoute(builder: (context) => TabbarStEvent(),));
      }
    } catch (e) {
      
    }
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
                // CircleAvatar(
                //   radius: 50,
                //   backgroundImage: AssetImage('images/profile.jpg'),),
                InkWell(
                  onTap: () async{
                    ImagePicker Picked = ImagePicker();
                pick = await Picked.pickImage(source: ImageSource.gallery);
                setState(() {
                  image = File(pick!.path);
                });
                  },
                  child:CircleAvatar(
                    radius: 50,
                    backgroundImage: image != null? FileImage(image!):null,
                    child: image == null? Icon(Icons.person,size: 50,):null,
                    
                    
                  )
                  //
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(100),
                  //   child: image == null?
                  //   Image.asset('images/profile.jpg',width: 100,):Image.file(image!,width: 130,)
                  // ),
                )
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
           Padding(
             padding: const EdgeInsets.only(top: 20),
             child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text('Register No'),
                ),
              ],
                       ),
           ),
          SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
              controller: register,
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
                  child: Text('Phone No'),
                ),
              ],
                       ),
           ),
          SizedBox(
            width: 350,
            height: 50,
            child: TextFormField(
              controller: phonenumber,
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
              controller: email,
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
                    ProfileImg();
                    editstudentprofile();
                    // Navigator.pop(context);
                  },
                   child: Container(
                     width: 350,
                     height: 50,
                     decoration: BoxDecoration(
                       color: Colors.blue,
                       borderRadius: BorderRadius.circular(10)
                     ),
                     child: Center(child: Text('Submit',style: TextStyle(color: Colors.white),)),
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