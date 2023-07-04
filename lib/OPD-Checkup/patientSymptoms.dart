import 'package:flutter/material.dart';

import '../widgets/alert_dialog.dart';

class PatientSymptomsPage extends StatefulWidget {
  const PatientSymptomsPage({Key? key}) : super(key: key);

  @override
  State<PatientSymptomsPage> createState() => _PatientSymptomsPageState();
}

class _PatientSymptomsPageState extends State<PatientSymptomsPage> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24,8,16,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Text(
                'Patient\'s Symptoms',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Flexible(
              flex: 8,
              child: Container(
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context,index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 3.0,
                        color: Colors.white,

                        borderRadius: BorderRadius.circular(20.0),
                        child: ListTile(

                          title:RichText(
                            text: TextSpan(
                              text: "${index+1}.  ",
                              style: TextStyle(color: Colors.black,fontSize: 17),
                              children: [
                                TextSpan(
                                  text: "Fever",
                                  style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 17),
                                )
                              ]
                            ),
                          ),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.circle,size: 8.0,),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0,right: 10.0),
                                child: Text("Medium",style: TextStyle(fontSize: 10),),
                              ),
                              Icon(Icons.circle,size: 8.0,),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0,right: 10.0),
                                child: Text("2 days ago",style: TextStyle(fontSize: 10),),
                              ),
                              Icon(Icons.circle,size: 8.0,),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0,right: 10.0),
                                child: Text("All time",style: TextStyle(fontSize: 10),),
                              ),
                            ],
                          ),


                        ),
                      ),
                    )),
              ),
            ),
            Flexible(
              flex: 1,
                child: InkWell(
                  onTap: () => Navigator.pushNamed(context, '/searchSymptoms'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add,color: Theme.of(context).primaryColor,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Add more ',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Theme.of(context).primaryColor,decoration:TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ),)
          ],
        ),
      ),
    );
  }
}
