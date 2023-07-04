import 'package:doctorconnext/widgets/alert_dialog.dart';
import 'package:flutter/material.dart';

class Registration2 extends StatelessWidget {
  const Registration2({Key? key}) : super(key: key);
  _customAlertDialog(BuildContext context, AlertDialogType type ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: AlertDialogPage(
            type: type,
            path: '/add_doctors1.1',
            title: "",
            content: "Account created successfully. Please complete the doctor profile",

          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 55,
          width: 350,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20)),
          child: TextButton(
            onPressed: () => _customAlertDialog(context, AlertDialogType.tandc ),

            child: Text(
              'Submit',
              style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: 'Poppins',fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        height: height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(16,0,16,0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Align(
                        alignment: AlignmentDirectional.topStart,
                        child: RichText(
                          text: TextSpan(
                            text: '  About Hospital / Clinic',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height*0.25,
                      decoration: BoxDecoration(
                        border: Border.all(color: Theme.of(context).primaryColor, width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        //obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Theme.of(context).primaryColor,
                          hintText: '   Enter in brief',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16,20,16,0),
                child: Container(
                  height: height*0.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Opening time",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Theme.of(context).primaryColor, width: 2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  //obscureText: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    fillColor:Theme.of(context).primaryColor,
                                    hintText: '09:30 am',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [ Text(
                            "Opening time",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                            ),
                          ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Theme.of(context).primaryColor, width: 2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    //obscureText: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      fillColor: Theme.of(context).primaryColor,
                                      hintText: '03:30 pm',
                                    ),
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
              ),
              SizedBox(
                height: height*0.2,
              ),

            ],
          ),
        ),
      ),
    );
  }
}