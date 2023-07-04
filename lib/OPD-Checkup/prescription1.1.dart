import 'package:flutter/material.dart';
import 'package:doctorconnext/theme.dart';
class Prescription1 extends StatefulWidget {
  const Prescription1({Key? key}) : super(key: key);

  @override
  State<Prescription1> createState() => _Prescription1State();
}

class _Prescription1State extends State<Prescription1> {
  TextEditingController _searchDiseaseController = TextEditingController();
  clearTextInput() {
    _searchDiseaseController.clear();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      child: Column(
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
                      '  Diagonized with',
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
                        hintText: "Search for disease",
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
                      controller: _searchDiseaseController,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                    child: Text(
                      '  Remarks',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: width*0.9,

                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                    child: TextField(
                      //obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Theme.of(context).primaryColor,
                        hintText: '   Enter in brief',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )

    );
  }
}
