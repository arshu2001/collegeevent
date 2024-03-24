import 'package:flutter/material.dart';
import 'package:school_events/admin/admintabbar_upcomingprevious.dart';
import 'package:school_events/admin/tabbar3.dart';

class AdminTabbarRequestEvent extends StatefulWidget {
  const AdminTabbarRequestEvent({super.key});

  @override
  State<AdminTabbarRequestEvent> createState() => _AdminTabbarRequestEventState();
}

class _AdminTabbarRequestEventState extends State<AdminTabbarRequestEvent> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: TabBarView(
                    children: [
                    Tabbar3(),
                    AdminTabbarUpcomingPrevious()
                    
                    
                  ]),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40)
                ),
                width: 380,
                height: 70,
                child: TabBar(
                  labelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: EdgeInsets.all(10.0),
                  indicator: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  tabs: [
                  Container(
                    child: Text('Request',
                    style: TextStyle(fontSize: 20),),
                  ),
                  Container(
                    child: Text('Event',
                    style: TextStyle(fontSize: 20),),
                  )

                ]),
              ),
            )
          ],
        ),
      ));
  }
}