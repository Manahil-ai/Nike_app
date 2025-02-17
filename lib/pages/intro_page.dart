import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             //logo
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                'lib/images/nikelogo.png',
                height: 240,
                ),
            ),
            const SizedBox(height: 48),
             //title
             const Text(
              'Just Do it!',
              style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              ),
             //subtitle
             const Text(
              'Brand new sneakers and custom kicks made with premium quality',
              style:TextStyle(
                fontSize: 16,
                color: Color.fromARGB(163, 2, 38, 66),
              ),
              textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48,),
              
             //start now button
             GestureDetector(
              onTap: () =>Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                  ),
              ),
               child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child:const Padding(
                  padding: const EdgeInsets.all(25),
                  child: const Text(
                   'Shop Now',
                   style: TextStyle(
                    color: Colors.white,
                   )
                  ),
                ),
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}