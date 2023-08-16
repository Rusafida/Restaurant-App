import 'package:flutter/material.dart';
import 'package:resturant/home_location.dart';
import 'package:resturant/payment.dart';
import 'package:resturant/payment_screen.dart';
import 'package:resturant/profile.dart';
import 'package:resturant/number_stepper.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
    var _selectedNumber=0;
  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        children: const [
          SizedBox(height: 12),
          // Text(
          //   'Combo Meals',
          //   style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     fontSize: 18,
          //   ),
          // )
        ],
      ),
    );
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 233, 233, 222),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 117, 134, 23),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          iconSize: 40,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>const HomeLocation(),
                ));
          },
        ),
        actions: [
          IconButton(
            icon:const Icon(Icons.person),
            iconSize: 30,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ));
              // Handle the action when the profile icon is pressed
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            content,
            Column(children: [
              const SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:const Color.fromARGB(255, 246, 245, 245),
                ),
                width: 370,
                height: 130,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        children: [
                          const Text(
                            '      Lollipop Chiken',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Text(
                                '  Qty',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
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
                    const SizedBox(
                      width: 100,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/img2.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
            const SizedBox(height: 13),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 246, 245, 245),
              ),
              width: 370,
              height: 130,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Column(
                      children: [
                        const Text(
                          '     Hariyali Kabab',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: const Text(
                                '  Qty',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 78,
                              height: 25,
                              decoration: BoxDecoration(
                                color:const Color.fromARGB(255, 192, 198, 202),
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
                  const SizedBox(
                    width: 105,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/img2.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 246, 245, 245),
              ),
              width: 370,
              height: 130,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Column(
                      children: [
                        const Text(
                          ' Red kabab Chiken',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Text(
                              'Qty',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 78,
                              height: 25,
                              decoration: BoxDecoration(
                                color:const Color.fromARGB(255, 192, 198, 202),
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
                  const SizedBox(
                    width: 70,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/img2.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:const Color.fromARGB(255, 246, 245, 245),
              ),
              width: 370,
              height: 130,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Column(
                      children: [
                        const Text(
                          '      Hot wings Chiken',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Text(
                              '  Qty',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 78,
                              height: 25,
                              decoration: BoxDecoration(
                                color:const Color.fromARGB(255, 192, 198, 202),
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
                  const SizedBox(
                    width: 70,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/img2.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:const Color.fromARGB(255, 117, 134, 23),
              ),
              width: 320,
              height: 40,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>const Payment(),
                      ));
                   Navigator.push(context,
                   MaterialPageRoute(builder: (context) =>Payment(),));
                },
                child: const Center(
                  child: Text(
                    '  Continue to Payment',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
