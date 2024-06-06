import 'package:flutter/material.dart';
import 'package:school_events/student/studentpreviousevent_details.dart';
import 'package:school_events/student/studentpreviousevent_photo.dart';

class TabbarStDetailPhoto extends StatefulWidget {
  const TabbarStDetailPhoto({super.key});

  @override
  State<TabbarStDetailPhoto> createState() => _TabbarStDetailPhotoState();
}

class _TabbarStDetailPhotoState extends State<TabbarStDetailPhoto> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
         appBar: AppBar(
           bottom: TabBar(
            dividerColor: Colors.white,
            labelStyle: TextStyle(fontSize: 20),
            labelColor: Color(0xFF3063A5),
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: [
            Text('Details'),
            Text('Photo')
          ]),
        ),
        body: TabBarView(children: [
          StudentPeriousEventDetails(),
          StudentPreviousEventPhoto()
        ]),
      ),
    );
  }
}