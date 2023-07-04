import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VCAlert extends StatelessWidget {
  VCAlert({
    Key? key,
  }) : super(key: key);

  var text = RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      // Note: Styles for TextSpans must be explicitly defined.
      // Child text spans will inherit styles from parent
      style: const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12.0,
        color: Colors.black,
      ),
      children: <TextSpan>[
        TextSpan(
          text: 'There is a incoming video call consultation for ',
          style: TextStyle(fontSize: 12),
        ),
        TextSpan(
            text: 'Niharika Tiwari',
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  );

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
                  'assets/images/videocall.png',
                  width: 120,
                  height: 120,
                ),
                //const SizedBox(height: 10.0),
                Text("Incoming Video Call from Dr. Rashmika Pandey",
                    style: TextStyle(fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 10,
                ),
                text,
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
                            onPressed: () {},
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
                              onPressed: () {},
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