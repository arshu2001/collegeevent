import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:school_events/teacher/teacher_profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Teacher_Editprofile extends StatefulWidget {
  const Teacher_Editprofile({super.key});

  @override
  State<Teacher_Editprofile> createState() => _Teacher_EditprofileState();
}

class _Teacher_EditprofileState extends State<Teacher_Editprofile> {
  var name = TextEditingController();
  var department = TextEditingController();
  var phone = TextEditingController();
  var email = TextEditingController();
  File? image;
  String? imageurl;

  Future<void>teacherdetails()async{
    try {
      SharedPreferences spref = await SharedPreferences.getInstance();
      String? uid = spref.getString('tdId');
      print('Shared Preference Teacher Id : $uid');

      if(uid!.isNotEmpty){
        Stream<DocumentSnapshot> TeacherStream = FirebaseFirestore.instance
        .collection('Teacher Data')
        .doc(uid)
        .snapshots();

        TeacherStream.listen((teachersnapshot) { 
          if(teachersnapshot.exists){
            setState(() {
              name.text = teachersnapshot['Name'] ?? '';
              department.text = teachersnapshot['Depatment'] ?? '';
              email.text = teachersnapshot['Email'] ?? '';
              phone.text = teachersnapshot['Phone'] ?? '';
              imageurl = teachersnapshot['imageurl'] ?? '';

            });
          }
        });
      }
    } catch (e) {
      print('error fetching Teacher details:$e');
    }
  }
  @override
  void initState() {
    super.initState();
    teacherdetails();
  }

  Future<void>teacheredit()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? uid = pref.getString('tdId');
    if(uid != null){
      await FirebaseFirestore.instance.collection('Teacher Data').doc(uid).update({
        'Name': name.text,
        'Depatment': department.text,
        'Phone': phone.text,
        'Email': email.text,

        'imageurl': imageurl ?? '',
      });
      print('image url :$imageurl');
      await pref.setString('Name', name.text);
      await pref.setString('Depatment', department.text);
      await pref.setString('Phone', phone.text);
      await pref.setString('Email', email.text);
      if (imageurl != null) {
        await pref.setString('imageurl', imageurl!);
      }
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Profile updated')));
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Teacher_Profile(),
          ));
    }
  }

  Future<void>teacherprofile()async{
    if(image != null){
      var reff = FirebaseStorage.instance
      .ref()
      .child('Teacher Profile')
      .child(DateTime.now().microsecondsSinceEpoch.toString());
    await reff.putFile(image!);
    var imgurl = await reff.getDownloadURL();
    setState(() {
      imageurl = imgurl;
      print('image;$imageurl');
    });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 20),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () async {
                    var picked = await ImagePicker()
                        .pickImage(source: ImageSource.gallery);
                    if (picked != null) {
                      setState(() {
                        image = File(picked.path);
                      });
                    }
                  },
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: image != null
                        ? FileImage(image!) as ImageProvider<Object>
                        : (imageurl != null && imageurl!.isNotEmpty)
                            ? NetworkImage(imageurl!)
                            : null,
                    child: image == null && (imageurl == null || imageurl!.isEmpty)
                        ? Icon(Icons.person, size: 50)
                        : null,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Text(
                      'Name',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: SizedBox(
                  width: 350,
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Text(
                      'Department',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: SizedBox(
                  width: 350,
                  child: TextFormField(
                    controller: department,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ),
              //  Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(top: 20, left: 30),
              //       child: Text(
              //         'Register number',
              //         style: TextStyle(fontSize: 14),
              //       ),
              //     ),
              //   ],
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 5),
              //   child: SizedBox(
              //     width: 350,
              //     child: TextFormField(
              //       controller: register,
              //       decoration: InputDecoration(border: OutlineInputBorder()),
              //     ),
              //   ),
              // ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Text(
                      'Phone No',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: SizedBox(
                  width: 350,
                  child: TextFormField(
                    controller: phone,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Text(
                      'Email',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: SizedBox(
                  width: 350,
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: InkWell(
                  onTap: () async {
                    await teacherprofile();
                    await teacheredit();
                  },
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color(0xFF3063A5),
                        borderRadius: BorderRadius.circular(7)),
                    child: Center(
                        child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}