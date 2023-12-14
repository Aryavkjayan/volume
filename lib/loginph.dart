import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:volume/otp.dart';

class LoginphScreen extends StatefulWidget {
  const LoginphScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginphScreen> createState() => _LoginphScreenState();
}

class _LoginphScreenState extends State<LoginphScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _phoneController = TextEditingController();
  @override
   
  Widget build(BuildContext context) {
    // Determine the screen size
    bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    Widget content = Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: 80,),
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/vol2.png',
            ),
          ),
          SizedBox(height: 80,),
        
    Container(
      padding: EdgeInsets.only(left: 20.0),
      alignment: Alignment.centerLeft,
      child: Text(
      'Sign in / Register',
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontFamily: 'Monument Extended',
        fontWeight: FontWeight.w400,
        height: 0,
      ),
      ),
    ),
    
                
               Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
      controller: _phoneController,
      keyboardType: TextInputType.number, // Set keyboard type to numeric
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly, // Allow only digits
      ],
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a Phonenumber';
        }
        return null;
      },
      style: TextStyle(color: Colors.white), // Set text color to white
      decoration: InputDecoration(
        labelText: 'Mobile Number',
        labelStyle: TextStyle(color: Colors.white), // Set label color to white
        errorStyle: TextStyle(fontSize: 16.0, color: Colors.white), // Set error text color to white
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(9.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(9.0)),
        ),
      ),
      ),
    ),
    
    
          SizedBox(height: 30),
         
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
                    'Send OTP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isSmallScreen ? 14 : 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () async {
                   if (_formKey.currentState!.validate()) {
                          // Form is valid, proceed with navigation
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => OtpScreen()),
                          );
                        }
                    
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 61, 115),
      body: Stack(
  children: [
    content,
    // Positioned(
    //   top: 490,
    //   left: 0,
    //   right: 0,
    //   child: Center(
    //     child: Column(
    //       children: [
    //         Image.asset(
    //           'assets/images/vol.png',
    //           width: 80,
    //         ),
    //         SizedBox(height: 10,),
    //         Text(
    //           'Fitness',
    //           style: TextStyle(
    //             color: Colors.white,
    //             fontSize: 26,
    //             fontFamily: 'Monument Extended',
    //             fontWeight: FontWeight.w400,
    //             height: 0,
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
  ],
)
    );
  }
}
