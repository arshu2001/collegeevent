import 'package:flutter/material.dart';

class AdminAddEvent extends StatefulWidget {
  const AdminAddEvent({super.key});

  @override
  State<AdminAddEvent> createState() => _AdminAddEventState();
}

class _AdminAddEventState extends State<AdminAddEvent> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        title: Center(
          child: Text('Event')),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text('Event Name',style: TextStyle(fontSize: 16),),
              ),
            ],
          ),
          SizedBox(
            height: 50,
            width: 350,
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ),
            )),
             Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Row(
                           children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text('Date',style: TextStyle(fontSize: 16),),
                ),
                           ],
                         ),
             ),
          SizedBox(
            height: 50,
            width: 350,
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ),
            )),
             Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Row(
                           children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text('Time',style: TextStyle(fontSize: 16),),
                ),
                           ],
                         ),
             ),
             SizedBox(
            height: 50,
            width: 350,
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ),
            )),
             Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Row(
                           children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text('Location',style: TextStyle(fontSize: 16),),
                ),
                           ],
                         ),
             ),
              SizedBox(
            height: 50,
            width: 350,
            child: TextFormField(
              maxLines: 10,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ),
            )),
            Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Row(
                           children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text('Description',style: TextStyle(fontSize: 16),),
                ),
                           ],
                         ),
             ),
            SizedBox(
            height: 200,
            width: 350,
            child: TextFormField(
              maxLines: 10,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ),
            )),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text('Submit',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
                    )),
                ),
              ),
            )
            
        ],
      ),
    );
  }
}