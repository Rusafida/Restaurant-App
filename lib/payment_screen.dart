import 'package:flutter/material.dart';
import 'package:resturant/cart_screen.dart';

import 'package:resturant/payment.dart';
import 'package:resturant/profile.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 201, 201, 153),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 28, 55, 18),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
             SizedBox(
              height: 15,
            ),
             Center(
               child: Text(
                'Select a method of Payment',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
            ),
             ),
             Padding(padding: const EdgeInsets.only(left:1.0),
             child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    width: 370,
                    height: 70,
                    child: InkWell(onTap: (){},
                    child: Center(
                      child: Text(
                        'Gpay , Phone pay , Paytm ',
                        style: TextStyle(
                          color:Color.fromARGB(100, 0, 0, 0),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ),
                ),
                const SizedBox(height: 15),
                 Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    width: 370,
                    height: 70,
                    child: InkWell(onTap: (){},
                    child: Center(
                      child: Text(
                        'UPI ID',
                        style: TextStyle(
                          color:Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ),
                ),
                 const SizedBox(height: 15),
                 Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    width: 370,
                    height: 70,
                    child: InkWell(onTap: (){},
                    child: Center(
                      child: Text(
                        'Debit Card / Credit Card',
                        style: TextStyle(
                          color:Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ),
                ),
                 const SizedBox(height: 15),
                 Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    width: 370,
                    height: 70,
                    child: InkWell(onTap: (){},
                    child: Center(
                      child: Text(
                        'Internet Banking',
                        style: TextStyle(
                          color:Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ),
                ),
                 const SizedBox(height: 15),
                 Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    width: 370,
                    height: 70,
                    child: InkWell(onTap: (){},
                    child: const Center(
                      child: Text(
                        'Cash On Delivery',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ),
                ),
                 const SizedBox(height: 25),
                 Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 28, 55, 18),
                    ),
                    width: 270,
                    height: 60,
                    child: InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Payments()));
                    },
                    child:const Center(
                      child: Text(
                        'Continue to Payment',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
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