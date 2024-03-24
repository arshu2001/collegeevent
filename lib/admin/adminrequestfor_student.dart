import 'package:flutter/material.dart';

class AdminRequestForStudent extends StatefulWidget {
  const AdminRequestForStudent({super.key});

  @override
  State<AdminRequestForStudent> createState() => _AdminRequestForStudentState();
}

class _AdminRequestForStudentState extends State<AdminRequestForStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Center(child: Text('details')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/profile.jpg'),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Anandu',
                  style: TextStyle(
                    fontSize: 20
                  ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 30),
                  child: Row(
                    children: [
                      Text('Department'),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(':      Bcom'),
                      ),
                      
                    ],
                  ),
                ),
                
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 30),
                  child: Row(
                    children: [
                      Text('Request event'),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(':      Holi festival'),
                      ),
                      
                    ],
                  ),
                ),
                
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 30),
                  child: Row(
                    children: [
                      Text('Date'),
                      Padding(
                        padding: const EdgeInsets.only(left: 75),
                        child: Text(':      25/01/2024'),
                      ),
                      
                    ],
                  ),
                ),
                
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 30),
                  child: Row(
                    children: [
                      Text('Time'),
                      Padding(
                        padding: const EdgeInsets.only(left: 73),
                        child: Text(':      10.00'),
                      ),
                      
                    ],
                  ),
                ),
                
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 30),
                  child: Row(
                    children: [
                      Text('Location'),
                      Padding(
                        padding: const EdgeInsets.only(left: 52),
                        child: Text(':      collage hall'),
                      ),
                      
                    ],
                  ),
                ),
                
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 10),
                  child: Text('Host',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18
                  ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/profile.jpg'),),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 23,top: 9),
                              child: Text('Host'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('Department'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 10),
                  child: Text('Description  :',style: TextStyle(
                    fontSize: 20
                  ),),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Container(
                    height: 110,
                    width: 360,
                    child: Text('Corem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis.'),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text('Accept',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                        )),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text('Reject',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                        )),
                    ),
                  ),
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}