// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:school_events/admin/adminrequestst_event.dart';

class Tabbar4 extends StatefulWidget {
  const Tabbar4({super.key});

  @override
  State<Tabbar4> createState() => _Tabbae4State();
}

class _Tabbae4State extends State<Tabbar4> {
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
                      Adminrequest_event()
                      ]))
              ],
            )
          ],
        ),
      ),
    );
  }
}