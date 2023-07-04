class UpcomingPatient {
  String listCount;
  String name;

  UpcomingPatient({
    required this.listCount,
    required this.name,
  });
}

final List<UpcomingPatient> uppatient = [
];

void addUpPatient(
    String listCount,
    String name,
    ) {
  final newUpPat = UpcomingPatient(
    listCount: listCount,
    name: name,
  );
  uppatient.add(newUpPat);
}