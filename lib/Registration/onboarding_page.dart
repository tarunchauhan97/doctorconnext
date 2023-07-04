//import 'package:doctorconnext_mobile_app/screens/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../widgets/image_overlap.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
              imageFlex: 3,
            ),
            image: Center(
                heightFactor: double.maxFinite,
                child: OverLap(
                  String: 'assets/images/illustration1.png',
                )),
            title: 'Connect OPDs and \n individuals to best doctors',
            body: '',
          ),
          PageViewModel(

            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
              imageFlex: 3,
            ),
            title: 'Get AI support to \n measure your vitals ',
            body: '',
            image: Center(
                child: OverLap(
                  String: 'assets/images/illustration2.png',
                )),
          ),
          PageViewModel(
            decoration: PageDecoration(
              titleTextStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
              imageFlex: 3,
            ),
            title: 'Get online prescription from \n remote doctors',
            body: '',
            image: Center(
                child: OverLap(
                  String: 'assets/images/illustration3.png',
                )),
          ),
        ],
        showDoneButton: true,
        isProgress: false,
        showNextButton: true,
        nextFlex: 35,
        next: Padding(
          padding: EdgeInsets.all(4),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.navigate_next_rounded,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
        done: Padding(
          padding: EdgeInsets.all(4),
          child: Container(
            height: 60,
            width: 250,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                'Get Started',
                style: TextStyle(color: Colors.white, fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,fontSize: 20),
              ),
            ),
          ),
        ),
        onDone: () {
          Navigator.pushReplacementNamed(context, '/login');
        },
      ),
    );
  }
}