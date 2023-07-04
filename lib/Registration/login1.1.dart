import 'package:doctorconnext/widgets/inputDeco.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import '../../widgets/alertdialogs/login_alert_dialog.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final formKey = GlobalKey<FormState>();

  _customAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return LogInAlertDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/images/logo doctorconnext.png',
                              height: 110,
                              width: 110,
                            ),
                          ),
                          Text(
                            'doctorconnext',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '  Mobile Number',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                        child: TextFormField(
                          //obscureText: true,
                          decoration: buildInputDecoration("Enter mobile number"),
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
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '  Email Address',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                        child: TextFormField(
                          //obscureText: true,
                          decoration: buildInputDecoration("Enter email address"),
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
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            _customAlertDialog(context);
                          }
                        },
                        // Navigator.pushNamed(context, '/otp');
                        child: Text(
                          'Get OTP',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 30,
          alignment: Alignment.bottomCenter,
          child: Text(
            'Terms and Conditions Applied',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.grey),
          ),
        ),
      ),
    );
  }
}