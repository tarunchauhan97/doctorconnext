import 'package:flutter/material.dart';

class PatientPage extends StatefulWidget {
  const PatientPage({Key? key}) : super(key: key);

  @override
  _PatientPageState createState() => _PatientPageState();
}

class _PatientPageState extends State<PatientPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height:30,
              width: 30,
              child: Image.asset(
                'assets/images/logo doctorconnext.png',
              ),
            ),
          ),
        ],
      ),
      body: Center(child: Text('PATIENT SCREEN')),
    );
  }
}
