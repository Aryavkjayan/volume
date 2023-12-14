import 'package:flutter/material.dart'; 

import 'package:volume/splash.dart';
void main()  {
  
  runApp(  
     MaterialApp(
      home: Scaffold(   
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              ),
             ),
          child:  SplashScreen(),),
      ),
    ),
  );
}