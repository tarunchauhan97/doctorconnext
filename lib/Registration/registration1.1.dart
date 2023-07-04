import 'package:doctorconnext/widgets/inputDeco.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registration1 extends StatefulWidget {
  @override
  _Registration1State createState() => _Registration1State();
}

class _Registration1State extends State<Registration1> {
  final regKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black87,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: regKey,
          child: Container(
            padding: EdgeInsets.all(16.0),
            //width: double.maxFinite,
            //height: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Provide us the below details',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '  Hospital / Clinic Name',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                        child: TextFormField(
                          //obscureText: true,
                          decoration: buildInputDecoration("   Eg. SidhiVinaya Hospital"),
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '  Lead doctor',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                        child: TextFormField(
                          //obscureText: true,
                          decoration: buildInputDecoration("   Eg. Dr.Vamika Mittal"),
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '  Mobile Number',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                        child: TextFormField(
                          //obscureText: true,
                          decoration:
                          buildInputDecoration("   Enter mobile number"),
                          keyboardType: TextInputType.phone,
                          validator: (value) {
                            if (value!.length != 10) {
                              return "  ! Enter a valid number";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '  Email Address',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                        child: TextFormField(
                          //obscureText: true,
                          decoration: buildInputDecoration("   Enter email address"),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty ||
                                !EmailValidator.validate(value,true)) {
                              return "  ! Enter a valid mail address";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 55,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20)),
          child: TextButton(
            onPressed: () {
              if (regKey.currentState!.validate()) {
                Navigator.pushNamed(context, '/registration1.2');
              }
            },
            // Navigator.pushNamed(context, '/otp');
            child: Text(
              'Next',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}