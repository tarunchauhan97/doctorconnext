class PatientDetail {
  int listCount;
  String name;
  String place;
  String whatsappNumber;
  String age;
  String gender;

  PatientDetail({
    required this.listCount,
    required this.name,
    required this.place,
    required this.whatsappNumber,
    required this.age,
    required this.gender,
  });
}

final List<PatientDetail> patientList = [

];

void addNewPatient(
    int listCount,
    String name,
    String place,
    String whatsappNumber,
    String age,
    String gender,
    ) {
  final newPatient = PatientDetail(
      listCount: listCount,
      name: name,
      place: place,
      whatsappNumber: whatsappNumber,
      age: age,
      gender: gender);
  patientList.add(newPatient);
}