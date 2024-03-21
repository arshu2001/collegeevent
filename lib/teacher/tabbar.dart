// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:school_events/admin/admin_login.dart';
import 'package:school_events/teacher/tabbar1.dart';
import 'package:school_events/teacher/teacher_registration.dart';
import 'package:school_events/teacher/teacherevent_upcoming.dart';
import 'package:school_events/teacher/teacherstudent_list.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
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
                    Teacher_List(),
                    Tabbar1(),
                    
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
                    child: Text('Students',
                    style: TextStyle(fontSize: 20),),
                  ),
                  Container(
                    child: Text('Events',
                    style: TextStyle(fontSize: 20),),
                  )

                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}