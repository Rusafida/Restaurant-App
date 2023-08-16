import 'package:flutter/material.dart';
import 'package:resturant/courses_category.dart';
import 'package:resturant/profile.dart';
import 'package:resturant/item_detailed_screen.dart';
import 'package:resturant/number_stepper.dart';

class MenuApetitis extends StatefulWidget {
  const MenuApetitis({super.key});

  @override
  State<MenuApetitis> createState() => _MenuApetitisState();
}

class _MenuApetitisState extends State<MenuApetitis> {
  var _selectedNumber=0;
  @override
  Widget build(BuildContext context) {
    Widget content = NumberStepper(initialValue: _selectedNumber, min: 0, max: 50, step: 1, onChanged: (value){
      setState(() {
        _selectedNumber=value;
      });
    });
  

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 233, 233, 222),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 117, 134, 23),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            iconSize: 40,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CoursesCategory(),
                  ));
            },
          ),
          actions: [
          IconButton(
            icon: Icon(Icons.person),
            iconSize: 30,
            onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(),
                ));
          },
          ),
        ],
      ),
        body: SingleChildScrollView(
          child: Column(children: [
             SizedBox(height: 12),
        Text(
          'Appetizers',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),

            Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: Column(children: [
                SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 246, 245, 245),
                  ),
                  
                  width: 370,
                  height: 80,
                  child:InkWell(
                              onTap: (){
                                Navigator.push(context, 
                                MaterialPageRoute(builder: (context) =>ItemDetailed(),));
                              },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Column(
                          children: [
                            const Text(
                              '  Hot & Sour Chiken',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                const Text(
                                  '  Qty',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 38,
                                ),
                                Container(
                                  width: 78,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 192, 198, 202),
                                    border: Border.all(
                                      color: Colors.black, // Border color
                                      width: 1, // Border width
                                    ),
                                  ),
                                 child: NumberStepper(initialValue: _selectedNumber, min: 0, max: 50, step: 1, onChanged: (value){
      setState(() {
        _selectedNumber=value;
      });
    }),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/img2.jpg',
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
               ), ]
              ),
            ),
            SizedBox(height: 13),
            Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 246, 245, 245),
                  ),
                  width: 370,
                  height: 80,
                  child:InkWell(
                              onTap: (){
                                Navigator.push(context, 
                                MaterialPageRoute(builder: (context) =>ItemDetailed(),));
                              },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Column(
                          children: [
                            const Text(
                              '  Creamy Chiken',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:10.0),
                                  child: const Text(
                                    '  Qty',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 38,
                                ),
                                Container(
                                  width: 78,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 192, 198, 202),
                                    border: Border.all(
                                      color: Colors.black, // Border color
                                      width: 1, // Border width
                                    ),
                                  ),
                                 child: NumberStepper(initialValue: _selectedNumber, min: 0, max: 50, step: 1, onChanged: (value){
      setState(() {
        _selectedNumber=value;
      });
    }),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 75,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/img2.jpg',
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),),
            ),
          const  SizedBox(height: 13),
           Padding(
              padding: const EdgeInsets.only(left:10.0),
             child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 246, 245, 245),
                  ),
                  width: 370,
                  height: 80,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Column(
                          children: [
                            const Text(
                              '  Hot & Sour Chiken',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                const Text(
                                  '  Qty',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 38,
                                ),
                                 Container(
                                  width: 78,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 192, 198, 202),
                                    border: Border.all(
                                      color: Colors.black, // Border color
                                      width: 1, // Border width
                                    ),
                                  ),
                                 child: NumberStepper(initialValue: _selectedNumber, min: 0, max: 50, step: 1, onChanged: (value){
      setState(() {
        _selectedNumber=value;
      });
    }),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                         'assets/images/img2.jpg',
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
           ),
          const  SizedBox(height: 13),
            Padding(
               padding: const EdgeInsets.only(left:10.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 246, 245, 245),
                  ),
                  width: 370,
                  height: 80,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Column(
                          children: [
                            const Text(
                              '  Hot & Sour Chiken',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                const Text(
                                  '  Qty',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 38,
                                ),
                                 Container(
                                  width:78,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 192, 198, 202),
                                    border: Border.all(
                                      color: Colors.black, // Border color
                                      width: 1, // Border width
                                    ),
                                  ),
                                 child: NumberStepper(initialValue: _selectedNumber, min: 0, max: 50, step: 1, onChanged: (value){
      setState(() {
        _selectedNumber=value;
      });
    }),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/img2.jpg',
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
            ),
            SizedBox(height: 13),
            Padding(
               padding: const EdgeInsets.only(left:10.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 246, 245, 245),
                  ),
                  width: 370,
                  height: 80,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Column(
                          children: [
                            const Text(
                              '  Hot & Sour Chiken',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                const Text(
                                  '  Qty',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 38,
                                ),
                                 Container(
                                  width: 78,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 192, 198, 202),
                                    border: Border.all(
                                      color: Colors.black, // Border color
                                      width: 1, // Border width
                                    ),
                                  ),
                                 child: NumberStepper(initialValue: _selectedNumber, min: 0, max: 50, step: 1, onChanged: (value){
      setState(() {
        _selectedNumber=value;
      });
    }),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/img2.jpg',
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
            ),
            SizedBox(height: 13),
           Padding(
            padding: const EdgeInsets.only(left:10.0),
             child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 246, 245, 245),
                  ),
                  width: 370,
                  height: 80,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Column(
                          children: [
                            const Text(
                              '  Hot & Sour Chiken',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                const Text(
                                  '  Qty',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 38,
                                ),
                                 Container(
                                  width: 78,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 192, 198, 202),
                                    border: Border.all(
                                      color: Colors.black, // Border color
                                      width: 1, // Border width
                                    ),
                                  ),
                                 child: NumberStepper(initialValue: _selectedNumber, min: 0, max: 50, step: 1, onChanged: (value){
      setState(() {
        _selectedNumber=value;
      });
    }),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/img2.jpg',
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
           ),
            SizedBox(height: 13),
            Padding(
               padding: const EdgeInsets.only(left:10.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 246, 245, 245),
                  ),
                  width: 370,
                  height: 80,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Column(
                          children: [
                            const Text(
                              '  Hot & Sour Chiken',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                const Text(
                                  '  Qty',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 38,
                                ),
                                Container(
                                  width: 78,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 192, 198, 202),
                                    border: Border.all(
                                      color: Colors.black, // Border color
                                      width: 1, // Border width
                                    ),
                                  ),
                                 child: NumberStepper(initialValue: _selectedNumber, min: 0, max: 50, step: 1, onChanged: (value){
      setState(() {
        _selectedNumber=value;
      });
    }),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/img2.jpg',
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
            ),
          ]),
        ));
  }
}
