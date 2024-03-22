import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Teacher_Details1 extends StatefulWidget {
  const Teacher_Details1({super.key});

  @override
  State<Teacher_Details1> createState() => _Teacher_Details1State();
}

class _Teacher_Details1State extends State<Teacher_Details1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Details')),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Column(
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 110,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[100]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Onam Festival',style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text('Date'),
                            Padding(
                              padding: const EdgeInsets.only(left: 36),
                              child: Text(':  03/01/2024'),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text('Time'),
                            Padding(
                              padding: const EdgeInsets.only(left: 34),
                              child: Text(':  3:00 PM'),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text('Location'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(':  Collage'),
                            )
                          ],
                        ),
                      ),
                        
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20),
              child: Row(
                children: [
                  Text('Participations',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 70,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('images/profile.jpg')),
                        title: Text('Student Name',
                        style: TextStyle(
                          fontWeight: FontWeight.w500
                        ),
                        ),
                        subtitle: Text('Department'),
                        trailing: IconButton(onPressed: () {
                          showDialog(context: context, builder: (context) {
                            return AlertDialog(
                              backgroundColor: Colors.grey[200],
                              title: Text('Conform Co-ordinator'),
                              actionsAlignment: MainAxisAlignment.center,
                              actions: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text('Submit',style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16
                                      ),)),
                                  ),
                                )
                              ],
                            );
                            
                          },);
                        }, icon: Icon(CupertinoIcons.clear_circled_solid,color: Colors.blue,)),
                      ),
                    ),
                  );
                },),
            )
            
            
          ],
        ),
      ),
      
    );
  }
}