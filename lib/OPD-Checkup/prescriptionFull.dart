import 'package:flutter/material.dart';
import 'package:doctorconnext/widgets/age.dart';

import '../widgets/alert_dialog.dart';
class PrescriptionFull extends StatefulWidget {
  const PrescriptionFull({Key? key}) : super(key: key);

  @override
  State<PrescriptionFull> createState() => _PrescriptionFullState();
}

class _PrescriptionFullState extends State<PrescriptionFull> {
  _customAlertDialog(BuildContext context, AlertDialogType type ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: AlertDialogPopPage(
            type: type,
            path: '/navigationBar',
            title: "",
            content: "Prescription has been shared with Raj Gupta on thier whatsapp number.",

          ),
        );
      },
    );
  }
  TextEditingController _selectDateController = TextEditingController();
  String quantity = "4";
  String intake = "Full";
  String frequency = "Morning";
  String consumption = "afterfood";
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 30,
              width: 30,
              child: Image.asset(
                'assets/images/logo docbot.png',
              ),
            ),
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text("Sidhi Vinayak Hospital" ,style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600
        ),),
        elevation: 0.0,
      ),
      bottomNavigationBar: Padding(
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
              _customAlertDialog(context, AlertDialogType.check);
            },
            // Navigator.pushNamed(context, '/otp');
            child: Text(
              'Share Prescription',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
      body: Container(
        height: height,
        width: width,
        child: ListView(

          children: [
            Container(
              height: height*0.1,
              width: width,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(40.0))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.mail_outline,color: Colors.white,size: 10.0,),
                      Text("  SidhiVinaya@support.in",style: TextStyle(fontSize: 10,color: Colors.white),),
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Shared by ",
                        style: TextStyle(color: Colors.white,fontSize: 12,),
                        children: [
                          TextSpan(
                            text: "Dr.ManPreet Singh",
                            style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),
                          )
                        ]
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                      child: Text(
                        '  Diagonized with',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: width*0.9,

                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 1.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                      child: TextField(
                        //obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Theme.of(context).primaryColor,
                          hintText: '   Enter in brief',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                      child: Text(
                        '  Remarks',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: width*0.9,

                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 1.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                      child: TextField(
                        //obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Theme.of(context).primaryColor,
                          hintText: '   Enter in brief',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                child: Container(
                  height: 1.0,
                  width: width*0.9,
                  color: Colors.black26,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                      child: Text(
                        '  Medicine',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(230, 245, 248, 1),
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 1.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            size: 30,
                            color: Theme.of(context).primaryColor,
                          ),
                          Text("Paracetomol")
                        ],
                      )
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "     Quantity",
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
                                value: quantity,
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
                                    quantity = newValue!;
                                  });
                                },
                                items: Quantity.quantity.map<DropdownMenuItem<String>>((String value) {
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
                          "     Intake",
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
                                value: intake,
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
                                    intake = newValue!;
                                  });
                                },
                                items : Intake.intake.map<DropdownMenuItem<String>>((String value) {
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
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "     Frequency",
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
                                value: frequency,
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
                                    frequency = newValue!;
                                  });
                                },
                                items: Frequency.frequency.map<DropdownMenuItem<String>>((String value) {
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
                          "     Consumption",
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
                                value: consumption,
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
                                    consumption = newValue!;
                                  });
                                },
                                items: Consumption.consumption.map<DropdownMenuItem<String>>((String value) {
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                child: Container(
                  height: 1.0,
                  width: width*0.9,
                  color: Colors.black26,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                      child: Text(
                        '  Lab Test',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(230, 245, 248, 1),
                          border: Border.all(
                              color: Theme.of(context).primaryColor, width: 1.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              size: 30,
                              color: Theme.of(context).primaryColor,
                            ),
                            Text("Blood Test")
                          ],
                        )
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 55,
                  width: width*0.4,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: Center(child: Text("Ultrasound")),
                  ),
                ),
                Container(
                  height: 55,
                  width: width*0.4,
                  decoration: BoxDecoration(

                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: Center(child: Text("Ultrasound")),
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                child: Container(
                  height: 1.0,
                  width: width*0.9,
                  color: Colors.black26,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                      child: Text(
                        '  Re-visit date',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(

                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 1.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        onChanged: (text) {},
                        decoration: InputDecoration(
                          hintText: "   dd/mm/yyyy",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15),

                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            icon: Icon(Icons.date_range),
                            onPressed: () {

                            },
                          ),
                        ),
                        controller: _selectDateController,
                      ),
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
