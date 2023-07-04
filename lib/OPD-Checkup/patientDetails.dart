import 'package:doctorconnext/widgets/age.dart';
import 'package:flutter/material.dart';
class PatientDetails extends StatefulWidget {
  const PatientDetails({Key? key}) : super(key: key);

  @override
  State<PatientDetails> createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
  String dropdownValue = 'Male';
  String dropdownAge = '24';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
        //width: double.maxFinite,
        //height: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Text(
                'Patient\'s basic details',
                style: TextStyle(
                  fontSize: 20,
                  //fontFamily: 'Poppins-Bold.ttf',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                      child: Text(
                        '  Name',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 1.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('     patient name',style: TextStyle(color: Colors.black,fontSize: 15),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                      child: Text(
                        '  Place',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 1.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('     patient place',style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                      child: Text(
                        '  Whatsapp Number',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 1.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('     whatsapp number',style: TextStyle(color: Colors.black,fontSize: 15),),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "     Age",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                        child: Container(
                          width: double.maxFinite,
                          height: 55,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 1.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: DropdownButton<String>(
                              value: dropdownAge,
                              icon: Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Image.asset(
                                    "assets/images/shape.png",
                                    width: 24,
                                    height: 24,
                                  ),
                                ),
                              ),
                              elevation: 16,
                              underline: Container(
                                color: Colors.transparent,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownAge = newValue!;
                                });
                              },
                              items: Age.age.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "     Gender",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                        child: Container(
                          height: 55,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 1.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              icon: Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: 24,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                              elevation: 16,
                              underline: Container(
                                color: Colors.transparent,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                              items: <String>[
                                'Male',
                                'Female',
                                'Other'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                      child: Text(
                        '  Any Remarks',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 1.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                      child:Text('     remarks',style: TextStyle(color: Colors.black,fontSize: 15),),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
