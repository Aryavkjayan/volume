import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:volume/register.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _formKey = GlobalKey<FormState>();
  final List<TextEditingController> _otpControllers = List.generate(4, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    Widget content = Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(height: 80,),
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/vol2.png',
            ),
          ),
          SizedBox(height: 80,),
          Container(
            padding: EdgeInsets.only(left: 20.0),
            alignment: Alignment.center,
            child: const Text(
              'Enter Your 4 Digit OTP',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Monument Extended',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          SizedBox(height: 20),
          // Row containing 4 containers for OTP digits
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return Container(
                width: isSmallScreen ? 40 : 60,
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: TextFormField(
                  controller: _otpControllers[index],
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a digit';
                    }
                    return null;
                  },
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 51, 61, 115),
                    contentPadding: EdgeInsets.all(10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                  ),
                ),
              );
            }),
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
                    'Sign in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isSmallScreen ? 14 : 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      // Form is valid, perform navigation
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegScreen()),
                      );
                    }
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
           const Center(
                
                child: Text(
                  "Resend OTP ?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
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
        ],
      ),
    );
  }
}
