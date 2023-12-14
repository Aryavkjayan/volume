import 'package:flutter/material.dart';
import 'package:volume/onbord3.dart';

class Onbord2Screen extends StatefulWidget {
  const Onbord2Screen({
    Key? key,
  }) : super(key: key);

  @override
  State<Onbord2Screen> createState() => _Onbord2ScreenState();
}

class _Onbord2ScreenState extends State<Onbord2Screen> {
  @override
  Widget build(BuildContext context) {
    // Determine the screen size
    bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    Widget content = Column(
      children: [
        Container(
          alignment: Alignment.topRight,
          child: Image.asset(
            'assets/images/ob2.png',
          ),
        ),
        SizedBox(height: 30),
        Center(
          child: Text(
            'Join dynamic group ride sessions with expert\ncoaches for an immersive indoor fitness journey',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: isSmallScreen ? 12 : 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: isSmallScreen ? 30 : 25),
        Center(
          child: Container(
            width: isSmallScreen ? 100 : 130,
            height: isSmallScreen ? 45 : 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: Color.fromRGBO(123, 97, 255, 1),
            ),
            child: Center(
              child: InkWell(
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isSmallScreen ? 14 : 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () async {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return Onbord3Screen();
                      },
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset(0.0, 0.0);
                        const curve = Curves.easeInOut;

                        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                      transitionDuration: Duration(milliseconds: 500), // Adjust the duration as needed
                    ),
                  );
                  
                },
              ),
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 61, 115),
      body: Stack(
  children: [
    content,
    Positioned(
      top: 490,
      left: 0,
      right: 0,
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/vol.png',
              width: 80,
            ),
            SizedBox(height: 10,),
            Text(
              'Fitness',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: 'Monument Extended',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    ),
  ],
)
    );
  }
}
