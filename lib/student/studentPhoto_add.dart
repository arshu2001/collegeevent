
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:school_events/student/studentpreviousevent_photo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StudentPhotoAdd extends StatefulWidget {
  const StudentPhotoAdd({super.key});

  @override
  State<StudentPhotoAdd> createState() => _StudentPhotoAddState();
}

class _StudentPhotoAddState extends State<StudentPhotoAdd> {
  XFile? pick;
  File? image;
  String? imgurl;

  //   Future<void> updateuserdetails() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   String? img = pref.getString('imgsId');
  //   if (img != null) {
  //     await FirebaseFirestore.instance
  //         .collection('student data')
  //         .doc(img)
  //         .update({


  //       'imageurl': imgurl ?? '',
  //     });

  //     if (imgurl != null) {
  //       await pref.setString('imageurl', imgurl!);
  //     }
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text('Profile updated')));
  //   }
  // }

  // Future<void>showimg()async{
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //     String? img = pref.getString('imgsId');
  //     print('student id:$img');
  //     if(img!.isNotEmpty){
  //       Stream<DocumentSnapshot> imgstream = FirebaseFirestore.instance
  //       .collection('student data')
  //       .doc(img)
  //       .snapshots();
  //      imgstream.listen((imgsnapshot) { 
  //       if(imgsnapshot.exists){
  //         setState(() {
  //          imgurl = imgsnapshot['imageurl'] ?? '';
  //         });
  //       }
  //      });
  //     }
  // }
  // void initState() {
  //   super.initState();
  //   showimg();
  // }
  Future<void> Photoadd()async{
    if(image!= null){
      try {
        final ref = FirebaseStorage.instance
        .ref()
        .child('Photo_add')
        .child(DateTime.now().microsecondsSinceEpoch.toString());
       await ref.putFile(image!);
       var imageurl = await ref.getDownloadURL();
       setState(() {
         imgurl = imageurl;
       });
       Navigator.push(context, MaterialPageRoute(builder: (context) => StudentPreviousEventPhoto(),)) ;
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error'))
        );
      }
    }
  }
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.only(left: 90.0),
          child: Text(
            'Add Photo',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Photo',
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: 300,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(), borderRadius: BorderRadius.circular(7)),
              child: IconButton(onPressed: () async{
                ImagePicker Picked = ImagePicker();
                pick = await Picked.pickImage(source: ImageSource.gallery);
                setState(() {
                  image = File(pick!.path);
                });

              },
               icon: image == null ? Image.asset('images/add-image.png',width: 200,color: Color(0xffb4466b2).withOpacity(0.4),): Image.file(image!)
              // icon: image != null? FileImage(image!):null;,
              
               ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Text(
                'Description',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(
                  decoration:
                      InputDecoration(enabledBorder: OutlineInputBorder())),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: SizedBox(
                width: 350,
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                  onPressed: () {
                     Photoadd();
                    //  updateuserdetails();
                  },
                  child: Text(
                    'Send',
                    style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w500),
                  ),
                ),
                
              ),
            )
          ],
        ),
      ),
    );

  }
}