import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}