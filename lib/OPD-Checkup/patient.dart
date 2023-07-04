
import 'package:doctorconnext/OPD-Checkup/patientDetails.dart';
import 'package:doctorconnext/OPD-Checkup/patientSymptoms.dart';
import 'package:doctorconnext/OPD-Checkup/patient_vitals.dart';
import 'package:doctorconnext/widgets/age.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/alert_dialog.dart';

class PatientDetailsPage extends StatefulWidget {
  const PatientDetailsPage({Key? key}) : super(key: key);

  @override
  _PatientDetailsPageState createState() => _PatientDetailsPageState();
}

class _PatientDetailsPageState extends State<PatientDetailsPage> with SingleTickerProviderStateMixin{
  late TabController _patientTabController;
  String dropdownValue = 'Male';
  String dropdownAge = '24';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _patientTabController = new TabController(length: 3, vsync: this,initialIndex: 0);
    _patientTabController.addListener(() {
      setState(() {

      });
    });

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _patientTabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          height: 30,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorLight,
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: TabBar(
              controller: _patientTabController,
              indicator: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              unselectedLabelColor: Color.fromRGBO(119, 119, 119, 1),
              unselectedLabelStyle: TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500,fontSize: 12),
              labelStyle: TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500,fontSize: 12),
              indicatorColor: Theme.of(context).primaryColor,
              tabs: [
                Tab(text: 'Basic'),
                Tab(text: 'Vitals',),
                Tab(text: 'Symptoms',),

              ]),
        ),
      ),
      bottomNavigationBar: _patientTabController.index < 2? nextButton():generatePresciption(),
      body: Container(
        height: height,
        width: width,
        child: TabBarView(
          controller: _patientTabController,
          children: [
            PatientDetails(),
            PatientVitalsPage(),
            PatientSymptomsPage()

          ],
        ),
      ),
    );
  }

  Widget nextButton() {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black26,blurRadius: 2.0,spreadRadius: 1.0,offset: Offset(3,3))],
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20)),
        child: TextButton(
          onPressed: () {
            switch(_patientTabController.index){
              case 0: _patientTabController.animateTo(1);break;
              case 1: _patientTabController.animateTo(2);break;
            }

          },
          // Navigator.pushNamed(context, '/otp');
          child: Text(
            'Next',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
  Widget generatePresciption() {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black26,blurRadius: 2.0,spreadRadius: 1.0,offset: Offset(3,3))],
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20)),
        child: TextButton(
          onPressed: () => Navigator.pushNamed(context, '/prescription'),
          child: Text(
            'Generate Prescription',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }

}


