import 'package:flutter/material.dart';

class Teacher_Stdetail extends StatefulWidget {
  const Teacher_Stdetail({super.key});

  @override
  State<Teacher_Stdetail> createState() => _Teacher_StdetailState();
}

class _Teacher_StdetailState extends State<Teacher_Stdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        title: Center(child: Text('Student Detail',
        style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment
              .center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/profile.jpg'),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Name',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Register No   :',
                style: TextStyle(fontSize: 18),
                ),
                Text('   00000',style: TextStyle(fontSize: 18),)
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Department   :',
                style: TextStyle(fontSize: 18),
                ),
                Text('   Bcom',style: TextStyle(fontSize: 18),)
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Phone No   :',
                style: TextStyle(fontSize: 18),
                ),
                Text('   ',style: TextStyle(fontSize: 18),)
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}