import 'package:flutter/material.dart';
import 'package:school_events/student/tabbarst_event.dart';

class StudentRegister extends StatefulWidget {
  const StudentRegister({super.key});

  @override
  State<StudentRegister> createState() => _StudentRegisterState();
}

class _StudentRegisterState extends State<StudentRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Registration',style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold),
            ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text('Name'),
                ),
              ],
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25,top: 25),
                  child: Text('Department'),
                ),
              ],
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
              ),
            ),
             Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25,top: 25),
                  child: Text('Register No'),
                ),
              ],
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25,top: 25),
                  child: Text('Phone No'),
                ),
              ],
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25,top: 25),
                  child: Text('Email'),
                ),
              ],
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
              ),
            ),
             Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25,top: 25),
                  child: Text('password'),
                ),
              ],
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TabbarStEvent(),));
                },
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text('Submit',style: TextStyle(color: Colors.white),)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}