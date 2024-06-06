import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:school_events/student/studenteventrequest_details.dart';
import 'package:school_events/student/studentreqevent_detail.dart';

class StudentEventRequest extends StatefulWidget {
  const StudentEventRequest({super.key});

  @override
  State<StudentEventRequest> createState() => _StudentEventRequestState();
}

class _StudentEventRequestState extends State<StudentEventRequest> {
  List previous =['Holi Festival','Halloween'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(stream: FirebaseFirestore.instance.collection('Request Event').snapshots(),
      builder: (context,AsyncSnapshot<QuerySnapshot> snapshot) {
        if(!snapshot.hasData){
          return Center(child: CircularProgressIndicator(),);
        }
        return ListView.builder(
          itemCount: snapshot.data!.docs.length,
          itemBuilder: (context, index) {
            var event = snapshot.data!.docs[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                
                
                tileColor: Color(0xFF3063A5),
                title: Text(event['Event'],style: TextStyle(color: Colors.white),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => StudentrqeventDetail(event:event),));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            );
        },);
      },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: Container(
          height: 70,
          width: 70,
          child: FloatingActionButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => StudentevreqDetails(),));
          },
          child: Icon(Icons.add,color: Colors.white,size: 40,),
          backgroundColor: Color(0xFF3063A5),
          shape: CircleBorder(),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
// 