import 'package:flutter/material.dart';
import 'package:school_events/teacher/teacherevent_previous.dart';
import 'package:school_events/teacher/teacherevent_upcoming.dart';

class Tabbar1 extends StatefulWidget {
  const Tabbar1({super.key});

  @override
  State<Tabbar1> createState() => _Tabbar1State();
}

class _Tabbar1State extends State<Tabbar1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false,
          bottom: TabBar(
            dividerColor: Colors.white,
            labelStyle: TextStyle(fontSize: 20),
            labelColor: Colors.blue,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: [
            Text('Upcoming'),
            Text('Previous')
          ]),
        ),
        body: TabBarView(children: [Teacher_Upcoming(),Teacher_Previous()]),
      ),
    );
  }
}