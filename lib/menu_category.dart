import 'package:flutter/material.dart';
import 'package:resturant/courses_category.dart';
import 'package:resturant/home_location.dart';
import 'package:resturant/profile.dart';
import 'package:resturant/unavailable_page.dart';

class Menucategory extends StatelessWidget{
  const Menucategory({super.key});

  @override
  Widget build(BuildContext context) {
     Widget content =  Center(
        child: Column(
      children: const[
        SizedBox(height: 12),
        Text(
          'Select a Menu Category',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        )
      ],
    ));
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 201, 201, 153),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 28, 55, 18),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          iconSize: 40,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeLocation(),
                ));
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            iconSize: 30,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
          },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 1.0),
        child: Column(children: [
          content,
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 249, 246, 246),
                        ),
                        width: 150,
                        height: 150,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CoursesCategory()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/img2.jpg',
                                      width: 150,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned.fill(
                                      top: 80,
                                      bottom: 10,
                                      left: 10,
                                      right: 10,
                                      child: Container(
                                        color: Colors.white,
                                         child: const Center(
                    child: Text(
                      'Non-Veg',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                                        
                                      ),
                                    )
                                  ],
                                ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                 const SizedBox(width: 35),
                  Column(
                    children: [
                     const SizedBox(height: 30),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:const Color.fromARGB(255, 245, 243, 243),
                        ),
                        width: 150,
                        height: 150,
                        child: InkWell(
                          onTap: () {
                           
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/veg.jpg',
                                      width: 150,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned.fill(
                                      top: 80,
                                      bottom: 10,
                                      left: 10,
                                      right: 10,
                                      child: Container(
                                        color: Colors.white,
                                         child: const Center(
                    child: Text(
                      'Veg',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                                      ),
                                    )
                                  ],
                                ),
                                ),
                                const SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )),
         const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 100.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:const Color.fromARGB(255, 250, 249, 249),
                      ),
                      width: 150,
                      height: 150,
                      child: InkWell(
                        onTap: () {
                         
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/img1.png',
                                      width: 150,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned.fill(
                                       top: 80,
                                      bottom: 10,
                                      left: 10,
                                      right: 10,
                                      child: Container(
                                        color: Colors.white,
                                        child: const Center(
                    child: Text(
                      'Mixed',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 246, 245, 245),
                  ),
                  width: 350,
                  height: 60,
                  child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>UnAvailable()));
                          },
                  child: const Center(
                    child: Text(
                      '    Customize Menu',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )  ],
            ),
          )
        ]),
      ),
    );
  }
}