import 'package:doctorconnext/models/patientDetail_model.dart';
import 'patient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientVitalsPage extends StatefulWidget {

  @override
  _PatientVitalsPageState createState() => _PatientVitalsPageState();
}

class _PatientVitalsPageState extends State<PatientVitalsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Patient\'s Vitals',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 55,
                      child: Text(
                        'BP',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 1.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                          child: TextField(
                            style: TextStyle(fontSize: 12),
                            //obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Theme.of(context).primaryColor,
                              hintText: '   Enter Blood Pressure',
                              suffixText: 'mm Hg  ',
                              suffixStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      width: 55,
                      child: Text(
                        'BT',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 1.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                          child: TextField(
                            style: TextStyle(fontSize: 12),
                            //obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Theme.of(context).primaryColor,
                              hintText: '   Enter Blood Temperature',
                              suffixText: "\u2109  ",
                              suffixStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      width: 55,
                      child: Text(
                        'SpO2',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 1.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                          child: TextField(
                            style: TextStyle(fontSize: 12),
                            //obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Theme.of(context).primaryColor,
                              hintText: '   Enter SpO2',
                              suffixText: 'mm Hg  ',
                              suffixStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      width: 55,
                      child: Text(
                        'Pulse \n Rate',
                        style:TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 1.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                          child: TextField(
                            style: TextStyle(fontSize: 12),
                            //obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Theme.of(context).primaryColor,
                              hintText: '   Enter Pulse Rate',
                              suffixText: 'bpm  ',
                              suffixStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      width: 55,
                      child: Text(
                        'Weight',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 1.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                          child: TextField(
                            style: TextStyle(fontSize: 12),
                            //obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Theme.of(context).primaryColor,
                              hintText: '   Enter Weight',
                              suffixText: 'kg  ',
                              suffixStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      width: 55,
                      child: Text(
                        'Height',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 1.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                          child: TextField(
                            style: TextStyle(fontSize: 12),
                            //obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Theme.of(context).primaryColor,
                              hintText: '   Enter Height',
                              suffixText: 'm  ',
                              suffixStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      width: 55,
                      child: Text(
                        'BMI',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 1.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                          child: TextField(
                            style: TextStyle(fontSize: 12),
                            //obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Theme.of(context).primaryColor,
                              hintText: '   Calculated BMI',
                              suffixText: 'kg/m2  ',
                              suffixStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}