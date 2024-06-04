import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300]
      ,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          
              // Logo
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset('lib/images/sneakers1.gif',),
                
              ),
              
          
              // Title
              Text(
                'Welcome to Urban Kicks',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4,),
          
              // Subtitle
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Brand new sneakers and custom kicks made with premium quality',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 48,),
          
          
              // Shop Now Button
              GestureDetector(
                onTap: () => Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => HomePage(),
                     ),
                     ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.cyan[400],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'Shop Now',
                    style: TextStyle(
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      
                       ),
                       ),
                  ),
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}

