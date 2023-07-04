import 'package:flutter/material.dart';
class AddDoctors1 extends StatelessWidget {
  const AddDoctors1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
    ),
    bottomNavigationBar: Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 55,
        width: 320,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20)),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/add_doctors1.2');
          },
          child: Text(
            'Next',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    ),
    body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Complete doctor profile',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Doctor 1 : ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '  Name',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColor, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8,2,8,2),
                      child: TextField(
                        //obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor:Theme.of(context).primaryColor,
                          hintText: '  Eg. Vamika Mittal',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '  Qualification',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColor, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8,2,8,2),
                      child: TextField(
                        //obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor:Theme.of(context).primaryColor,
                          hintText: '   Eg. MBBS',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '  Specialization',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColor, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8,2,8,2),
                      child: TextField(
                        //obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Theme.of(context).primaryColor,
                          hintText: '   Eg. physician',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '  Experience',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColor, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8,2,8,2),
                      child: TextField(
                        //obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor:Theme.of(context).primaryColor,
                          hintText: '   Eg. 5 years',
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
    )
    );
  }
}
