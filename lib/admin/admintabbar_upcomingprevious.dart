import 'package:flutter/material.dart';
import 'package:school_events/admin/admineventupcoming.dart';
import 'package:school_events/admin/adminprevious.dart';

class AdminTabbarUpcomingPrevious extends StatefulWidget {
  const AdminTabbarUpcomingPrevious({super.key});

  @override
  State<AdminTabbarUpcomingPrevious> createState() => _AdminTabbarUpcomingPreviousState();
}

class _AdminTabbarUpcomingPreviousState extends State<AdminTabbarUpcomingPrevious> {
  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false,
        title: Center(child: Text('Details')),
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
        body: TabBarView(children: [
          AdminEventUpcoming(),
          AdminPrevious()
        ]),
      ));
  }
}