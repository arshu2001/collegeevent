import 'package:flutter/material.dart';
import 'package:school_events/admin/adminaddevent.dart';
import 'package:school_events/admin/admineventupcoming_details.dart';

class AdminEventUpcoming extends StatefulWidget {
  const AdminEventUpcoming({super.key});

  @override
  State<AdminEventUpcoming> createState() => _AdminEventUpcomingState();
}

class _AdminEventUpcomingState extends State<AdminEventUpcoming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25,top: 10),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AdminEventUpcomingDetails(),));
                  },
                  child: Container(
                    height: 55,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,top: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('food festival',
                          style: TextStyle(fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(Icons.delete,color: Colors.white,size: 30,),
                          )
                        ],
                      ),
                    ),
                  
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,top: 30),
            child: Row(
              children: [
                Container(
                  height: 55,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Chrismas',
                        style: TextStyle(fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(Icons.delete,color: Colors.white,size: 30,),
                        )
                      ],
                    ),
                  ),
                
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,top: 30),
            child: Row(
              children: [
                Container(
                  height: 55,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Musical Festival',
                        style: TextStyle(fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(Icons.delete,color: Colors.white,size: 30,),
                        )
                      ],
                    ),
                  ),
                
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AdminAddEvent(),));
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 30,
                    child: Icon(Icons.add,size: 50,color: Colors.white,),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}