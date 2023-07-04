import 'package:doctorconnext/models/symptoms_model.dart';
import 'package:flutter/material.dart';

class SymptomsData extends StatefulWidget {
  String symptom;

  SymptomsData(this.symptom);

  @override
  _SymptomsDataState createState() => _SymptomsDataState();
}

class _SymptomsDataState extends State<SymptomsData> {
  String radioIntensity = '';
  String radioFrequency = '';
  String onsetValue = 'Select';

  // Group Value for Radio Button.
  int ir = 0;
  int fr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 4, 20, 15),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Symptoms :',
                        style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 55,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                            widget.symptom,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '     Select Intensity',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 4, 4, 16),
                    child: Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 1.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Radio(
                                hoverColor: Colors.blue,
                                activeColor: Colors.blue,
                                splashRadius: 0,
                                value: 1,
                                groupValue: ir,
                                onChanged: (val) {
                                  setState(() {
                                    radioIntensity = 'High';
                                    ir = 1;
                                  });
                                },
                              ),
                              Text(
                                'High',
                                style: new TextStyle(fontSize: 13.0),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Radio(
                                activeColor: Colors.blue,
                                value: 2,
                                groupValue: ir,
                                onChanged: (val) {
                                  setState(() {
                                    radioIntensity = 'Medium';
                                    ir = 2;
                                  });
                                },
                              ),
                              Text(
                                'Medium',
                                style: new TextStyle(fontSize: 13.0),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Radio(
                                activeColor: Colors.blue,
                                value: 3,
                                groupValue: ir,
                                onChanged: (val) {
                                  setState(() {
                                    radioIntensity = 'Low';
                                    ir = 3;
                                  });
                                },
                              ),
                              Text(
                                'Low',
                                style: new TextStyle(fontSize: 13.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    '     Select Frequency',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 4, 4, 16),
                    child: Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 1.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Radio(
                                hoverColor: Colors.blue,
                                activeColor: Colors.blue,
                                splashRadius: 0,
                                value: 1,
                                groupValue: fr,
                                onChanged: (val) {
                                  setState(() {
                                    radioFrequency = 'All day';
                                    fr = 1;
                                  });
                                },
                              ),
                              Text(
                                'All day',
                                style: new TextStyle(fontSize: 13.0),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Radio(
                                activeColor: Colors.blue,
                                value: 2,
                                groupValue: fr,
                                onChanged: (val) {
                                  setState(() {
                                    radioFrequency = 'During Night';
                                    fr = 2;
                                  });
                                },
                              ),
                              Text(
                                'During Night',
                                style: new TextStyle(fontSize: 13.0),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Radio(
                                activeColor: Colors.blue,
                                value: 3,
                                groupValue: fr,
                                onChanged: (val) {
                                  setState(() {
                                    radioFrequency = 'During Day';
                                    fr = 3;
                                  });
                                },
                              ),
                              Text(
                                'During Day',
                                style: new TextStyle(fontSize: 13.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    '     Select Onset',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 4, 4, 16),
                    child: Container(
                      height: 55,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 1.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: DropdownButton<String>(
                          value: onsetValue,
                          icon: Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.play_arrow_sharp,
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
                              onsetValue = newValue!;
                            });
                          },
                          items: <String>[
                            'Select',
                            'One day before',
                            'Today',
                            'Tomorrow ',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(fontSize: 14),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 4, 4, 16),
                    child: Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 1.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        style: TextStyle(fontSize: 14),
                        //obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Theme.of(context).primaryColor,
                          hintText: '   Enter onset manually',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
              addNewSymptoms(
                symptomsList.length+1,
                widget.symptom,
                radioIntensity,
                radioFrequency,
                onsetValue,

              );
              Navigator.popUntil(context, ModalRoute.withName('/patientDetailsPage'));
            },
            // Navigator.pushNamed(context, '/otp');
            child: Text(
              'Add Symptom',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}