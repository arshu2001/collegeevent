import 'package:flutter/material.dart';
import 'package:school_events/student/tabbarst_event.dart';

class StudentRegisterSuccess extends StatefulWidget {
  const StudentRegisterSuccess({super.key});

  @override
  State<StudentRegisterSuccess> createState() => _StudentRegisterSuccessState();
}

class _StudentRegisterSuccessState extends State<StudentRegisterSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 180),
          child: Column(
            children: [
              Icon(Icons.check_circle,size: 200,color: Colors.green,),
              Text('Thankyou',style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500,
                color: Colors.green
              ),),
              Text('Registration is Successfull',
              style: TextStyle(
                fontSize: 25
              ),
              ),
               InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => TabbarStEvent(),));
               },
               child: Padding(
                 padding: const EdgeInsets.only(top: 230),
                 child: Container(
                   width: 350,
                   height: 50,
                   decoration: BoxDecoration(
                     color: Colors.blue,
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child: Center(child: Text('Done',style: TextStyle(color: Colors.white,fontSize: 18),)),
                 ),
               ),
             )
            ],
          ),
        ),
      ),
      
    );
  }
}