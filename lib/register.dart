import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:volume/onbord1.dart';

class RegScreen extends StatefulWidget {
  const RegScreen({Key? key}) : super(key: key);

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _countryController = TextEditingController();
  String selectedGender = '';

  @override
  Widget build(BuildContext context) {
    Widget content = SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Form(
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
            SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'First Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Monument Extended',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                controller: _nameController,
                validator: RequiredValidator(errorText: 'Please enter your First name'),
                style: TextStyle(color: Colors.white), // Set text color to white
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  labelStyle: TextStyle(color: Colors.white),
                  errorStyle: TextStyle(fontSize: 16.0, color: Colors.white),
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
            Container(
              padding: EdgeInsets.only(left: 20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Last Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Monument Extended',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                controller: _lastnameController,
                validator: RequiredValidator(errorText: 'Please enter Last name'),
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  labelStyle: TextStyle(color: Colors.white),
                  errorStyle: TextStyle(fontSize: 16.0, color: Colors.white),
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
            Container(
              padding: EdgeInsets.only(left: 20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Email Address',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Monument Extended',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                controller: _emailController,
                validator: RequiredValidator(errorText: 'Please enter your Email'),
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  labelStyle: TextStyle(color: Colors.white),
                  errorStyle: TextStyle(fontSize: 16.0, color: Colors.white),
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
            Container(
              padding: EdgeInsets.only(left: 20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Phone Number',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
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
                validator: RequiredValidator(errorText: 'Please enter your Phone number'),
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  labelStyle: TextStyle(color: Colors.white),
                  errorStyle: TextStyle(fontSize: 16.0, color: Colors.white),
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
            Row(children: [
              Container(
                padding: EdgeInsets.only(left: 20.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Age',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Monument Extended',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: 50,
                  child: TextFormField(
                    controller: _countryController,
                    validator: RequiredValidator(errorText: 'Please enter your country'),
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      labelStyle: TextStyle(color: Colors.white),
                      errorStyle: TextStyle(fontSize: 16.0, color: Colors.white),
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
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Gender',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Monument Extended',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(width: 20),
              GenderContainer(
                symbol: '♂',
                gender: 'Male',
                isSelected: selectedGender == 'Male',
                onTap: () {
                  setState(() {
                    selectedGender = 'Male';
                  });
                },
              ),
              SizedBox(width: 20),
              GenderContainer(
                symbol: '♀',
                gender: 'Female',
                isSelected: selectedGender == 'Female',
                onTap: () {
                  setState(() {
                    selectedGender = 'Female';
                  });
                },
              ),
            ],
            ),
            SizedBox(height: 30),

            Center(
              child: Container(
                height: 55,
                width: 140,
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
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        // Save data to SharedPreferences before navigation
                        saveData();

                        // Form is valid, perform navigation
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UserProfilePage()),
                        );
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 61, 115),
      body: content,
    );
  }

  // Save data to SharedPreferences
  void saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', _nameController.text);
    prefs.setString('lastname', _lastnameController.text);
    prefs.setString('phone', _phoneController.text);
    prefs.setString('email', _emailController.text);
    prefs.setString('gender', selectedGender);
  }
}

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 51, 61, 115),
      body: Column(
        children: [
          SizedBox(height: 80,),
           Container(
  alignment: Alignment.center,
  child: Image.asset(
    'assets/images/vol3.png',
    width: MediaQuery.of(context).size.width * 0.4, // Adjust the percentage as needed
  ),
),
SizedBox(height: 80,),
Container(
  alignment: Alignment.center,
  child: Image.asset(
    'assets/images/pro.png',
    width: MediaQuery.of(context).size.width * 0.2, // Adjust the percentage as needed
  ),
),

        FutureBuilder(
  future: loadData(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.done) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' ${snapshot.data?['name']}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Monument Extended',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  ' ${snapshot.data?['lastname']}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Monument Extended',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${snapshot.data?['phone']}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'Monument Extended',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 17.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '|    ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Monument Extended',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                Text(
                  '${snapshot.data?['email']}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'Monument Extended',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Image.asset(
              'assets/images/fra.png',
              width: MediaQuery.of(context).size.width ,
            ),
            SizedBox(height: 70,),
             Center(
            child: Container(
              width: 130,
              height:  55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: Color.fromRGBO(123, 97, 255, 1),
              ),
              child: Center(
                child: InkWell(
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () async {
                  
                      // Form is valid, perform navigation
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Onbord1Screen()),
                      );
                    
                  },
                ),
              ),
            ),
          ),
           SizedBox(height: 16),
           Positioned(
      bottom: 0,
      left: 0,
      child: Image.asset(
        'assets/images/la.png',
        width: MediaQuery.of(context).size.width,
      ),
    ),
          ],
        ),
      );
    } else {
      return Center(child: CircularProgressIndicator());
    }
  },
),

        ],
      ),
    );
  }

  // Load data from SharedPreferences
  Future<Map<String, String>> loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return {
      'name': prefs.getString('name') ?? '',
      'lastname': prefs.getString('lastname') ?? '',
      'phone': prefs.getString('phone') ?? '',
      'email': prefs.getString('email') ?? '',
      'gender': prefs.getString('gender') ?? '',
    };
  }
}

class GenderContainer extends StatelessWidget {
  final String symbol;
  final String gender;
  final bool isSelected;
  final VoidCallback onTap;

  const GenderContainer({
    Key? key,
    required this.symbol,
    required this.gender,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 59,
        height: 59,
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : null,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              symbol,
              style: TextStyle(
                color: isSelected ? Color.fromARGB(255, 51, 61, 115) : Colors.white,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 8),
            Text(
              gender,
              style: TextStyle(
                color: isSelected ? Color.fromARGB(255, 51, 61, 115) : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: RegScreen(),
  ));
}
