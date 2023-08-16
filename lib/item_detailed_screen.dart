import 'package:flutter/material.dart';
import 'package:resturant/courses_category.dart';
import 'package:resturant/menu_apetiters.dart';
import 'package:resturant/profile.dart';

class ItemDetailed extends StatelessWidget {
  const ItemDetailed({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 201, 201, 153),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 28, 55, 18),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () 
          {
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context) => MenuAppetiterz()));
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            icon: const Icon(Icons.person),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 4.0),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Row(children: [
                  Container(
                    width: 250,
                    height: 250,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/s1.jpg',
                          fit: BoxFit.cover,
                          width: 100,
                        )),
                  ),
                  const SizedBox(
                    height: 25,
                    width: 20,
                  ),
                  Container(
                    width: 250,
                    height: 250,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/soup.jpg',
                          fit: BoxFit.cover,
                          width: 100,
                        )),
                  ),
                ]),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Row(
            children:const [
              Padding(
                padding:  EdgeInsets.only(left: 20.0),
                child:  Text(
                  'Hot & Sour Chicken Soup',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Chinese cusine',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    color: Colors.pink,
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: const [
              Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    '100% Non-veg',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ))
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: const [
              Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Description',
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ))
            ],
          ),
          const SizedBox(height: 14),
          Row(
            children: const [
              Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Hot and Sour Chicken Soup: A fiery blend of tender chicken,\nmushrooms, bamboo shoots, carrots, and bell peppers in a rich\n broth. With a tantalizing mix of soy sauce, rice vinegar, and\n chili paste, this soup delivers a perfect balance of heat and\n tang. A deliciously satisfying culinary adventure in every \nspoonful.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20.0),
                child: const Text(
                  'Add this Item',
                  style: TextStyle(
                    color: Colors.pink,
                    fontStyle: FontStyle.italic,
                    fontSize: 13,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                width: 78,
                height: 25,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 192, 198, 202),
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 1, // Border width
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 20, 83, 22),
                ),
                width: 200,
                height: 50,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CoursesCategory()));
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Column(
                          children:const [
                             Center(
                               child: Text('Add to more dishes',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  )),
                             )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
