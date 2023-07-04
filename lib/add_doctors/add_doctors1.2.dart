import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class AddDoctors2 extends StatefulWidget {

  const AddDoctors2({Key? key}) : super(key: key);

  @override
  State<AddDoctors2> createState() => _AddDoctors2State();
}

class _AddDoctors2State extends State<AddDoctors2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                Navigator.pushNamed(context, '/navigationBar');
              },
              child: Text(
                'Submit',
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
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '  Appointment Fee',
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
                              hintText: '  Eg. Rs.500',
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
                            '  About',
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
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
                              hintText: '   Eg. Enter about yourself',
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '  Add Photo',
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => pickLogo(),
                        child: Container(
                          width: width*0.4,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorLight,
                            border: Border.all(
                                color: Theme
                                    .of(context)
                                    .primaryColor,
                                width: 1.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: logo != null ? ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.file(
                              logo!,
                              fit: BoxFit.fill,),
                          ) : Container(
                              decoration: BoxDecoration(
                                color: Theme
                                    .of(context)
                                    .primaryColorLight,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    color: Theme
                                        .of(context)
                                        .primaryColor,
                                    borderRadius: BorderRadius.circular(6),),
                                  child: Icon(Icons.arrow_upward_rounded,
                                    color: Colors.white,
                                    size: 20,),
                                ),
                              )),

                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Icon(Icons.add,color: Theme.of(context).primaryColor,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Add more doctors',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Theme.of(context).primaryColor,decoration:TextDecoration.underline),
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

  File? logo;

  Future pickLogo() async {
    final logo = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (logo == null) return;

    final imageTemporary = File(logo.path);
    setState(() {
      this.logo = imageTemporary;
    });
  }
}