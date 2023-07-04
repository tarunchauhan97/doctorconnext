import 'package:flutter/cupertino.dart';

class DoctorsModel {
  final Image img;
  final String name;
  final String exp;
  final String qualification;
  final String hospital;
  final String timing;
  final String charge;

  DoctorsModel({
    required this.img,
    required this.name,
    required this.exp,
    required this.qualification,
    required this.hospital,
    required this.timing,
    required this.charge,
  });
}

final List<DoctorsModel> doctorsList = [
  DoctorsModel(
    img: Image.asset('assets/images/Check.png'),
    name: 'DR.Vicky Kashyap',
    exp: '8 yrs exp',
    qualification: 'MBBS,MD(Gen Med),PG(Diabetes),Physician',
    hospital: 'Sidhivinayak Hospital',
    timing: '12:15pm-03:30pm',
    charge: '₹' + '350',
  ),
];