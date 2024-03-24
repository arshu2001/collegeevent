import 'package:flutter/material.dart';
import 'package:school_events/admin/adminstudent_tabbar.dart';

class Adminrequest_event extends StatefulWidget {
  const Adminrequest_event({super.key});

  @override
  State<Adminrequest_event> createState() => _Adminrequest_eventState();
}

class _Adminrequest_eventState extends State<Adminrequest_event> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.grey[400]
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                   dividerColor: Colors.white,
                      labelStyle: TextStyle(fontSize:18),
                      
                      labelColor: Colors.black,
                      isScrollable: true,
                      tabAlignment: TabAlignment.center,
                      labelPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 7),
                  tabs: [
                    Text('Student'),
                    Text('Teacher')
                  ]),
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}