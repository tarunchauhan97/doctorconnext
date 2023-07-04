import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddedPatientAlert extends StatelessWidget {
  AddedPatientAlert({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                alignment: Alignment.topRight,
                child: Align(
                  alignment: Alignment.topRight,
                ),
              ),
              SizedBox(height: 5.0),
              Image.asset(
                'assets/images/Check.png',
                width: 120,
                height: 120,
              ),
              //const SizedBox(height: 10.0),
              Text("Patient added successfully to DR.Harpreet Singh",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("You will be notified with the timings for checkup after doctor approves",
                    style: TextStyle(fontSize: 10),
                    textAlign: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/navigationBar',
                        ModalRoute.withName('/navigationBar'));
                  },
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      'Check List',
                      style: TextStyle(color: Colors.white,fontSize: 15),
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}