import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:school_events/admin/adminnotification.dart';

class AdminAddNotification extends StatefulWidget {
  const AdminAddNotification({super.key});

  @override
  State<AdminAddNotification> createState() => _AdminAddNotificationState();
}

class _AdminAddNotificationState extends State<AdminAddNotification> {
  var event = TextEditingController();
  var description = TextEditingController();
  final formkey =GlobalKey<FormState>();

  Future<void>adminNotification()async{
    await FirebaseFirestore.instance.collection('Notification').doc()
    .set({
      'Event Name':event.text,
      'Description':description.text
    });
    event.clear();
    description.clear();
    Navigator.push(context, MaterialPageRoute(builder: (context) => AdminNotification(
    ),));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('event requested')));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Add Notification')),
      ),
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
               Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text('Event Name',style: TextStyle(fontSize: 16),),
                  ),
                ],
               ),
                SizedBox(
                height: 50,
                width: 350,
                child: TextFormField(
                  controller: event,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                  ),
                )),
                 Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: Row(
                               children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text('Description',style: TextStyle(fontSize: 16),),
                    ),
                               ],
                             ),
                 ),
                 SizedBox(
                height: 200,
                width: 350,
                child: TextFormField(
                  controller: description,
                  maxLines: 10,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                  ),
                )),
                InkWell(
                  onTap: () {
                    // Navigator.pop(context);
                    adminNotification();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 290),
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(68, 114, 178, 1),
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: Center(child: Text('Send',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
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