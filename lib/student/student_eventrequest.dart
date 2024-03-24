import 'package:flutter/material.dart';
import 'package:school_events/student/studenteventrequest_details.dart';
import 'package:school_events/student/studentreqevent_detail.dart';

class StudentEventRequest extends StatefulWidget {
  const StudentEventRequest({super.key});

  @override
  State<StudentEventRequest> createState() => _StudentEventRequestState();
}

class _StudentEventRequestState extends State<StudentEventRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 25),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => StudentrqeventDetail(),));
              },
              child: Container(
                height: 70,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 100),
                        child: Text('Holi festival',
                        style: TextStyle(fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text('Accepted',style: TextStyle(
                        color: Colors.white
                      ),)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 25),
            child: Container(
              height: 70,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text('Halloween',
                      style: TextStyle(fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text('Reject',style: TextStyle(
                      color: Colors.white
                    ),)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => StudentevreqDetails(),));
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 30,
                    child: Icon(Icons.add,size: 50,color: Colors.white,),
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