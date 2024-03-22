import 'package:flutter/material.dart';

class Admin_Request extends StatefulWidget {
  const Admin_Request({super.key});

  @override
  State<Admin_Request> createState() => _Admin_RequestState();
}

class _Admin_RequestState extends State<Admin_Request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(10)
              ),
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('images/profile.jpg',)),
                title: Text('Teacher Name'),
                subtitle: Text('Department'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.cancel_outlined,color: Colors.red,),
                    Icon(Icons.check_circle_outline,color: Colors.green,)
                  ],
                ),
                
                

                
              ),
            ),
          );
        
      },),
    );
  }
}