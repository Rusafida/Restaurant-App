import 'dart:html';

import 'package:flutter/material.dart';
import 'package:resturant/home_location.dart';
import 'package:resturant/profile.dart';

class UnAvailable extends StatelessWidget {
  const UnAvailable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 201, 201, 153),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 28, 55, 18),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Center(
                child: Column(children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child:const Center(
                          child:  Text(
                            'Sorry !!!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                 const SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding:const EdgeInsets.all(10),
                        child: const Text(
                          'This option is not available for now !!...',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Column(
                    children: [
                      Container(
                        padding:const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        width: 200,
                        height: 50,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeLocation()));
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Column(
                                  children: const [
                                    Center(
                                      child: Center(
                                        child: Text('Main Menu',textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              )),
        ],
      ),
    );
  }
}
