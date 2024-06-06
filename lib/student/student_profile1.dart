import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:school_events/student/student_profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StudentProfile1 extends StatefulWidget {
  StudentProfile1({super.key});

  @override
  State<StudentProfile1> createState() => _StudentProfile1State();
}

class _StudentProfile1State extends State<StudentProfile1> {
  var name = TextEditingController();
  var department = TextEditingController();
  var phonenumber = TextEditingController();
  var email = TextEditingController();
  var register = TextEditingController();
  File? image;
  String? imageurl;

  Future<void> setuserdetails() async {
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? uid = pref.getString('stdId');
      print('student id:$uid');
      if (uid!.isNotEmpty) {
        Stream<DocumentSnapshot> studentstream = FirebaseFirestore.instance
            .collection('student data')
            .doc(uid)
            .snapshots();
        studentstream.listen((studentsnapshot) {
          if (studentsnapshot.exists) {
            setState(() {
              name.text = studentsnapshot['Name'] ?? '';
              department.text = studentsnapshot['Depatment'] ?? '';
              phonenumber.text = studentsnapshot['Phone'] ?? '';
              email.text = studentsnapshot['Email'] ?? '';
              register.text = studentsnapshot['Register'] ?? '';
              imageurl = studentsnapshot['imageurl'] ?? '';
            });
          }
        });
      }
    } catch (e) {
      print('error fetching student details:$e');
    }
  }

  @override
  void initState() {
    super.initState();
    setuserdetails();
  }

  Future<void> updateuserdetails() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? uid = pref.getString('stdId');
    if (uid != null) {
      await FirebaseFirestore.instance
          .collection('student data')
          .doc(uid)
          .update({
        'Name': name.text,
        'Depatment': department.text,
        'Phone': phonenumber.text,
        'Register':register.text,
        'Email': email.text,

        'imageurl': imageurl ?? '',
      });
      await pref.setString('Name', name.text);
      await pref.setString('Depatment', department.text);
      await pref.setString('Phone', phonenumber.text);
      await pref.setString('Email', email.text);
      await pref.setString('Register', register.text);
      if (imageurl != null) {
        await pref.setString('imageurl', imageurl!);
      }
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Profile updated')));
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StudentProfiile(),
          ));
    }
  }

  Future<void> profileimg() async {
    if (image != null) {
      var ref = FirebaseStorage.instance
          .ref()
          .child('profile image')
          .child(DateTime.now().millisecondsSinceEpoch.toString());
      await ref.putFile(image!);
      var imgurl = await ref.getDownloadURL();
      setState(() {
        imageurl = imgurl;
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StudentProfiile(),
                  ));
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
               Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Text(
                      'Register number',
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
                    controller: register,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ),
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
                    controller: phonenumber,
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
                    await profileimg();
                    await updateuserdetails();
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