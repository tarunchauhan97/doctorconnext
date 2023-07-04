import 'package:flutter/material.dart';
class Prescription3 extends StatefulWidget {
  const Prescription3({Key? key}) : super(key: key);

  @override
  State<Prescription3> createState() => _Prescription3State();
}

class _Prescription3State extends State<Prescription3> {
  TextEditingController _searchLabController = TextEditingController();
  TextEditingController _selectDateController = TextEditingController();
  clearTextInput() {
    _searchLabController.clear();
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
                      '  Lab Test',
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
                        hintText: "Search for lab test",
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
                      controller: _searchLabController,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 55,
                width: width*0.4,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 1.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Center(child: Text("Ultrasound")),
                ),
              ),
              Container(
                height: 55,
                width: width*0.4,
                decoration: BoxDecoration(

                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 1.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Center(child: Text("Ultrasound")),
                ),
              ),

            ],
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
                      '  Re-visit date',
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

                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 1.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      onChanged: (text) {},
                      decoration: InputDecoration(
                        hintText: "   dd/mm/yyyy",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15),

                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: Icon(Icons.date_range),
                          onPressed: () {

                          },
                        ),
                      ),
                      controller: _selectDateController,
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),

    );
  }
}
