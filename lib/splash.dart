import 'package:flutter/material.dart';
import 'package:volume/onbord1.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
 

  

  @override
  Widget build(context) {
     Future.delayed(Duration(seconds: 5),(){
       Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Onbord1Screen(),
                                      ));
     }
     );
     return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Image.asset('assets/images/restlog.gif',
          // width: 300,
          // ),
          
          
           Image.asset(
          'assets/images/Layer_1.png',
        ),
    
      ],
      ),
     );
  }
 
}