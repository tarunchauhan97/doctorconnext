import 'package:doctorconnext/widgets/alertDialogs/otp_alert_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:otp_timer_button/otp_timer_button.dart';

class OTPScreen extends StatefulWidget {
  // static final String path = "lib/src/pages/misc/otp.dart";

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  _customAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return OtpAlertDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black87,),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Enter the OTP",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Kindly check the OTP received on your number and email address",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black.withOpacity(
                    0.5,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100.0),
            //OTPFields(),
            OTPTextField(
              length: 6,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              fieldWidth: 40,
              style: TextStyle(
                fontSize: 20,
                color: Theme
                    .of(context)
                    .primaryColor,
              ),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            const SizedBox(height: 20.0),

            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 55,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                    color: Theme
                        .of(context)
                        .primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () =>
                      _customAlertDialog(context),
                  child: Text(
                    'Verify',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
              child: Center(
                child: OtpTimerButton(
                  buttonType: ButtonType.text_button,
                  controller: controller,
                  height: 60,
                  text: Text(
                    'Resend OTP', style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  ),
                  duration: (5),
                  textColor: Colors.grey,
                  loadingIndicator: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    _requestOtp();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  OtpTimerButtonController controller = OtpTimerButtonController();

  _requestOtp() {

    controller.loading();
    Future.delayed(Duration(seconds: 5), () {
      controller.startTimer();
    });
  }
}