class SymptomsModel {
  int listCount;
  final String symptom;
  final String intensity;
  final String frequency;
  final String onset;

  SymptomsModel({
    required this.listCount,
    required this.symptom,
    required this.intensity,
    required this.frequency,
    required this.onset,
  });
}

final List<SymptomsModel> symptomsList = [];

void addNewSymptoms(
    int listCount,
    String symptom,
    String intensity,
    String frequency,
    String onset,
    ) {
  final newSymptom = SymptomsModel(
    listCount: listCount,
    symptom: symptom,
    intensity: intensity,
    frequency: frequency,
    onset: onset,
  );
  symptomsList.add(newSymptom);
}
