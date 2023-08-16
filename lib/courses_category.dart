import 'package:flutter/material.dart';
import 'package:resturant/menu_category.dart';
import 'package:resturant/menu_staters.dart';
import 'package:resturant/profile.dart';
import 'package:resturant/menu_apetiters.dart';
class CoursesCategory extends StatelessWidget {
  const CoursesCategory({super.key});
  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        children: const [
          SizedBox(height: 10,),
          Text(
            'Select a Menu Category',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),   
    );
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 201, 201, 153),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 28, 55, 18),
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=> const Menucategory())
            );
          }, 
          icon:const Icon(Icons.arrow_back_ios),
          ),
          actions: [
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Profile()));
              },
             icon:const Icon(Icons.person)
             ),
          ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            content,
            Column(
              children: [
               const SizedBox(height: 13),
                Container(
                   decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:const Color.fromARGB(255, 246, 245, 245),
                   ),
                   width: 370,
                   height: 80,
                   child: InkWell(
                          onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuApetitis()));
                          },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          const Text(
                            'Soups',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 160),
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
                   )
                ),
                const SizedBox(height: 15),
                Container(
                   decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:const Color.fromARGB(255, 246, 245, 245),
                   ),
                   width: 370,
                   height: 80,
                   child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuStaters()));
                          },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          const Text(
                            'Starters',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 150),
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
                   )
                ),
                const SizedBox(height: 15),
                Container(
                   decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:const Color.fromARGB(255, 246, 245, 245),
                   ),
                   width: 370,
                   height: 80,
                   child: InkWell(
                          onTap: () {
                          },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          const Text(
                            'Combo Meals',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 100),
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
                   )
                ),
                 const SizedBox(height: 13),
                Container(
                   decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                   ),
                   width: 370,
                   height: 80,
                   child: InkWell(
                          onTap: () {
                          },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          const Text(
                            'Jumbo Meals',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 100),
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
                   )
                ),
                 const SizedBox(height: 15),
                Container(
                   decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                   ),
                   width: 370,
                   height: 80,
                   child: InkWell(
                          onTap: () {
                          },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          const Text(
                            'Bread Items',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 100),
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
                   )
                ),
                 const SizedBox(height: 15),
                Container(
                   decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                   ),
                   width: 370,
                   height: 80,
                   child: InkWell(
                          onTap: () {
                          },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          const Text(
                            'Rice & Noodles',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 100),
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
                   )
                ),
                 const SizedBox(height: 15),
                Container(
                   decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                   ),
                   width: 370,
                   height: 80,
                   child: InkWell(
                          onTap: () {
                          },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          const Text(
                            'Curry Items',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 100),
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
                   )
                ),
                  const SizedBox(height: 15),
                Container(
                   decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                   ),
                   width: 370,
                   height: 80,
                   child: InkWell(
                          onTap: () {
                          },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          const Text(
                            'Salads',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 100),
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
                   )
                ),
                  const SizedBox(height: 15),
                  Container(
                   decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                   ),
                   width: 370,
                   height: 80,
                   child: InkWell(
                          onTap: () {
                          },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          const Text(
                            'Continental',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 100),
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
                   )
                ),
                 const SizedBox(height: 15),
                  Container(
                   decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 246, 245, 245),
                   ),
                   width: 370,
                   height: 80,
                   child: InkWell(
                          onTap: () {
                          },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          const Text(
                            'Traditional',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 100),
                          ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/img1.png',
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ],
                      ),
                    ),
                   )
                ),
              ],
            )
          ],
        ),

      ),
    );
  }
}
