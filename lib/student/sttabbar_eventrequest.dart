import 'package:flutter/material.dart';
import 'package:school_events/student/student_event.dart';
import 'package:school_events/student/student_eventrequest.dart';

class TabbarEventRequest extends StatefulWidget {
  const TabbarEventRequest({super.key});

  @override
  State<TabbarEventRequest> createState() => _TabbarEventRequestState();
}

class _TabbarEventRequestState extends State<TabbarEventRequest> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(automaticallyImplyLeading: false,
          title: Center(child: Padding(
            padding: const EdgeInsets.only(left: 90),
            child: Text('Event'),
          )),
          actions: [
          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.person_3_outlined)),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(onPressed: () {
              Navigator.pop(context);
          
            }, icon: Icon(Icons.notifications_active)),
          )
        ],
          bottom: TabBar(
            dividerColor: Colors.white,
            labelStyle: TextStyle(fontSize: 20),
            labelColor: Colors.blue,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: [
            Text('Event'),
            Text('Request')
          ]),
        ),
        body: TabBarView(children: [
          StudentEvent(),
          StudentEventRequest()
        ]),
      ));
  }
}