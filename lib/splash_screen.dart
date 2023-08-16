
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:resturant/courses_category.dart';
import 'package:resturant/home_location.dart';
import 'package:resturant/menu_category.dart';
import 'package:resturant/profile.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Color.fromARGB(255, 28, 55, 18),
       body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
               width: 200,
              height: 200,
              ),
              const SizedBox(height: 16),
              const Text(
                'JustEat',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.white,
                ),
                ),
                const SizedBox(height: 16),
                 OutlinedButton.icon(
                  onPressed: () {
                     Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeLocation()),
            );
                  }, 
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white
                  ),
                  icon:const Icon(Icons.arrow_right_alt), 
                  label:const Text('Click here to continue'),
                  ),
                  const SizedBox(height: 16),
                  const Text('Powered by',style:TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ) ),
                  


          ],
       ),),
    );
  }
}