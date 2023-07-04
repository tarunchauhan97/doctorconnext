import 'package:doctorconnext/OPD-Checkup/patientDetails.dart';
import 'package:doctorconnext/OPD-Checkup/prescription.dart';
import 'package:doctorconnext/add_doctors/add_doctors1.1.dart';
import 'package:doctorconnext/add_doctors/add_doctors1.2.dart';
import 'package:doctorconnext/Registration/login1.1.dart';
import 'package:doctorconnext/Registration/onboarding_page.dart';
import 'package:doctorconnext/Registration/registration1.1.dart';
import 'package:doctorconnext/screens/HistoryPage.dart';
import 'package:doctorconnext/screens/ProfilePage.dart';
import 'package:doctorconnext/screens/bottom_navigation/navigation_bar_page.dart';
import 'package:doctorconnext/theme.dart';
import 'package:flutter/material.dart';
import 'OPD-Checkup/add_symptoms.dart';
import 'OPD-Checkup/patient.dart';
import 'OPD-Checkup/patientSymptoms.dart';
import 'OPD-Checkup/patient_vitals.dart';
import 'OPD-Checkup/prescription1.1.dart';
import 'OPD-Checkup/prescription1.2.dart';
import 'OPD-Checkup/prescription1.3.dart';
import 'OPD-Checkup/prescriptionFull.dart';
import 'Registration/otp_page.dart';
import 'Registration/registration1.2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'doctorconnext',
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      initialRoute: '/intro',
      routes: {
        '/intro' : (context) => OnBoarding(),
        '/login' : (context) => LogIn(),
        '/otp': (context) => OTPScreen(),
        '/registration1.1': (context) => Registration1(),
        '/registration1.2' :(context) => Registration2(),
        '/add_doctors1.1' : (context) => AddDoctors1(),
        '/add_doctors1.2' : (context) => AddDoctors2(),
        '/navigationBar' : (context) => NavigationBarPage(),
        '/prescription' : (context) => Prescription(),
        '/prescription1.1' :(context) => Prescription1(),
        '/prescription1.2' :(context) => Prescription2(),
      },
    );
  }
}

