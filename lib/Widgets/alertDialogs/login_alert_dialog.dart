import 'package:flutter/material.dart';


class LogInAlertDialog extends StatelessWidget {

  LogInAlertDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.popAndPushNamed(context, '/otp'),
      child: Material(
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.black, width: 2)),
                          child: CircleAvatar(
                            radius: 10.0,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.close_rounded,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Image.asset(
                    'assets/images/Lock.png',
                    width: 120,
                    height: 120,
                  ),
                  //const SizedBox(height: 10.0),
                  Divider(),
                  Text("We have sent an OTP on \n your mobile number and \n mail address", textAlign: TextAlign.center),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}