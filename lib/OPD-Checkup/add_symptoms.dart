import 'symptoms_data.dart';
import 'package:flutter/material.dart';

class SearchSymptoms extends StatefulWidget {
  @override
  _SearchSymptomsState createState() => _SearchSymptomsState();
}

class _SearchSymptomsState extends State<SearchSymptoms> {
  TextEditingController searchController = TextEditingController();

  clearTextInput() {
    searchController.clear();
  }

  final symptoms = [
    'Fever',
    'Cough',
    'Pain',
    'Rash',
    'Vomiting',
    'Cold',
    'Fainting',
    'Headache',
    'Acidity',
    'Stomach Ache',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black87,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 4, 20, 0),
              child: Container(
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(),
                width: double.infinity,
                child: Text(
                  'Patient History',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(230, 245, 248, 1),
                          border: Border.all(
                              color: Theme.of(context).primaryColor, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          onChanged: (text) {},
                          decoration: InputDecoration(
                            hintText: "Search for symptom",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30,
                              color: Theme.of(context).primaryColor,
                            ),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: () {
                                setState(() {
                                  clearTextInput();
                                });
                              },
                            ),
                          ),
                          controller: searchController,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(40),
                        //  border: Border.all(width: 2, color: secondaryColor),
                        color: Colors.white70,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 4, 20, 4),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Select Symptoms from below",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 250,
                          mainAxisExtent: 50,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 30,
                        ),
                        itemCount: symptoms.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      SymptomsData(symptoms[index]),
                                ),
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                symptoms[index],
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(230, 245, 248, 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}