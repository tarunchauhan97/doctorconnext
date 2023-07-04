import 'package:doctorconnext/OPD-Checkup/prescription1.1.dart';
import 'package:doctorconnext/OPD-Checkup/prescription1.2.dart';
import 'package:doctorconnext/OPD-Checkup/prescription1.3.dart';
import 'package:doctorconnext/widgets/alert_dialog.dart';
import 'package:flutter/material.dart';

class Prescription extends StatefulWidget {
  const Prescription({Key? key}) : super(key: key);

  @override
  State<Prescription> createState() => _PrescriptionState();
}

class _PrescriptionState extends State<Prescription> with SingleTickerProviderStateMixin {
  late TabController _prescriptionTabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _prescriptionTabController = new TabController(length: 3, vsync: this,initialIndex: 0);
    _prescriptionTabController.addListener(() {
      setState(() {

      });
    });

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _prescriptionTabController.dispose();
  }
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
      bottomNavigationBar: _prescriptionTabController.index < 2? nextButton():fullPresciption(),
      body:Container(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: Container(
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
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorLight,
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  width: width*0.9,
                  child: TabBar(
                      controller: _prescriptionTabController,
                      indicator: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      unselectedLabelColor: Color.fromRGBO(119, 119, 119, 1),
                      unselectedLabelStyle: TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500,fontSize: 15),
                      labelStyle: TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500,fontSize: 15),
                      indicatorColor: Theme.of(context).primaryColor,
                      tabs: [
                        Tab(text: 'Part-1'),
                        Tab(text: 'Part-2',),
                        Tab(text: 'Part-3',),

                      ]),
                ),
              ),
            ),
            Flexible(
              flex: 8,
              child: Container(

                child: TabBarView(
                  controller: _prescriptionTabController,
                    children:[
                      Prescription1(),
                      Prescription2(),
                      Prescription3()

                    ] ),
              ),
            )
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
            switch(_prescriptionTabController.index){
              case 0: _prescriptionTabController.animateTo(1);break;
              case 1: _prescriptionTabController.animateTo(2);break;
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
  Widget fullPresciption() {
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
          onPressed: () => Navigator.pushNamed(context, '/fullPrescription'),
          child: Text(
            'Submit',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
