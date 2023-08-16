import 'package:flutter/material.dart';
import 'package:resturant/home_location.dart';

class Payments extends StatelessWidget {
  const Payments({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 201, 201, 153),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 28, 55, 18),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon:const Icon(Icons.person),
            ),
          ],
      ),
       body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const SizedBox(
              height: 15,
            ),
              const Center(
               child: Text(
                'Select a method of Payment',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
            ),
             ),
             Padding(padding: const EdgeInsets.only(left:20.0),
             child: Center(
               child: Column(          
                children: [
                 const SizedBox(height: 50),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: const Center(
                          child: Text(
                            'Success !',  textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: const [
                      Padding(padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'payment successfully completed',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color:Colors.black,
                        ),
                      ),
                      )
                    ],
                  ),
                   const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: const [
                      Padding(padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'You will be redirected to Main Menu \n in 05 seconds',textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color:Colors.black,
                        ),
                      ),
                      )
                    ],
                  ),
                   const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: const [
                      Padding(padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'or',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color:Colors.black,
                        ),
                      ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 9, 61, 11),
                        ),
                        width: 270,
                        height: 60,
                        child: InkWell(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeLocation()));
                        },
                        child: const Center(
                          child: Text(
                            'Continue to Home',textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ),
                      ),
                    ],
                  ),
                ],
               ),
             ),
             )
          ],
       ),
       ),
    );
  }
}
