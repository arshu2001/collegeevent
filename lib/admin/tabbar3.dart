import 'package:flutter/material.dart';
import 'package:school_events/admin/adminrequestst_event.dart';
import 'package:school_events/admin/adminteacher_request.dart';

class Tabbar3 extends StatefulWidget {
  const Tabbar3({super.key});

  @override
  State<Tabbar3> createState() => _Tabbar3State();
}

class _Tabbar3State extends State<Tabbar3> {
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
            Text('Teacher'),
            Text('Event')
          ]),
        ),
        body: TabBarView(children: [Admin_Request(),Adminrequest_event()]),
      ));
  }
}