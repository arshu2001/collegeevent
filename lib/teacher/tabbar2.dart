import 'package:flutter/material.dart';
import 'package:school_events/teacher/teacherevent_details.dart';
import 'package:school_events/teacher/teacherevent_photo.dart';

class Tabbar2 extends StatefulWidget {
  const Tabbar2({super.key});

  @override
  State<Tabbar2> createState() => _Tabbar2State();
}

class _Tabbar2State extends State<Tabbar2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
           bottom: TabBar(
            dividerColor: Colors.white,
            labelStyle: TextStyle(fontSize: 20),
            labelColor: Colors.blue,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: [
            Text('Details'),
            Text('Photo')
          ]),
        ),
        body: TabBarView(children: [Teacher_Details(),Teacher_Photo()]),
      ),
    );
  }
}