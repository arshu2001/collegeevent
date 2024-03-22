import 'package:flutter/material.dart';
import 'package:school_events/student/sttabbar_eventrequest.dart';

class TabbarStEvent extends StatefulWidget {
  const TabbarStEvent({super.key});

  @override
  State<TabbarStEvent> createState() => _TabbarStEventState();
}

class _TabbarStEventState extends State<TabbarStEvent> {
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
                    TabbarEventRequest()
                    
                    
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
                    child: Text('Upcoming',
                    style: TextStyle(fontSize: 20),),
                  ),
                  Container(
                    child: Text('Previous',
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