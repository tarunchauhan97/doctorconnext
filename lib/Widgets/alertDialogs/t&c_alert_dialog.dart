import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TCAlertDialog extends StatelessWidget {
  TCAlertDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          alignment: Alignment.center,
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
                  'assets/images/terms and condition.png',
                  width: 120,
                  height: 120,
                ),
                //const SizedBox(height: 10.0),
                Text(
                    "New patient will abide the Terms and Conditions of doctorconnext",
                    textAlign: TextAlign.center),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
                  child: Container(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 120,
                          height: 40,
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamedAndRemoveUntil('/navigationBar', (Route<dynamic> route) => false);
                            },
                            child: Text(
                              'Deny',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(230, 245, 248, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 40,
                          alignment: Alignment.center,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    '/addPatient',
                                    ModalRoute.withName('/navigationBar'));
                              },
                              child: Text(
                                'Accept',
                                style: TextStyle(color: Colors.white),
                              )),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}