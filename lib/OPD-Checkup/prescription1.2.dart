import 'package:doctorconnext/widgets/age.dart';
import 'package:flutter/material.dart';
import 'package:doctorconnext/theme.dart';
class Prescription2 extends StatefulWidget {
  const Prescription2({Key? key}) : super(key: key);

  @override
  State<Prescription2> createState() => _Prescription2State();
}

class _Prescription2State extends State<Prescription2> {
  TextEditingController _searchController = TextEditingController();
  String quantity = "4";
  String intake = "Full";
  String frequency = "Morning";
  String consumption = "afterfood";
  clearTextInput() {
    _searchController.clear();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                    child: Text(
                      '  Medicine',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(230, 245, 248, 1),
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 1.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      onChanged: (text) {},
                      decoration: InputDecoration(
                        hintText: "Search for medicine",
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
                      controller: _searchController,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "     Quantity",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                        child: Container(
                          width: double.maxFinite,
                          height: 55,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 1.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: DropdownButton<String>(
                              value: quantity,
                              icon: Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Image.asset(
                                    "assets/images/shape.png",
                                    width: 24,
                                    height: 24,
                                  ),
                                ),
                              ),
                              elevation: 16,
                              underline: Container(
                                color: Colors.transparent,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  quantity = newValue!;
                                });
                              },
                              items: Quantity.quantity.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "     Intake",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                        child: Container(
                          height: 55,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 1.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: DropdownButton<String>(
                              value: intake,
                              icon: Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: 24,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                              elevation: 16,
                              underline: Container(
                                color: Colors.transparent,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  intake = newValue!;
                                });
                              },
                             items : Intake.intake.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "     Frequency",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                        child: Container(
                          width: double.maxFinite,
                          height: 55,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 1.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: DropdownButton<String>(
                              value: frequency,
                              icon: Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Image.asset(
                                    "assets/images/shape.png",
                                    width: 24,
                                    height: 24,
                                  ),
                                ),
                              ),
                              elevation: 16,
                              underline: Container(
                                color: Colors.transparent,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  frequency = newValue!;
                                });
                              },
                              items: Frequency.frequency.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "     Consumption",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                        child: Container(
                          height: 55,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 1.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: DropdownButton<String>(
                              value: consumption,
                              icon: Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: 24,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                              elevation: 16,
                              underline: Container(
                                color: Colors.transparent,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  consumption = newValue!;
                                });
                              },
                              items: Consumption.consumption.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),

    );
  }
}
