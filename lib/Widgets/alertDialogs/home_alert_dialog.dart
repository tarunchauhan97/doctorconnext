import 'package:doctorconnext/widgets/alertdialogs/t&c_alert_dialog.dart';
import 'package:flutter/material.dart';

class HomeAlertDialog extends StatelessWidget {
  const HomeAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _tcAlert() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Center(
            child:TCAlertDialog(),
          );
        },
      );
    }
    return Material(
      type: MaterialType.transparency,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black,width:2)
                        ),
                        child: CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.close_rounded, color: Colors.black,size: 20,),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        onPressed: () {
                          _tcAlert();
                        },
                        child: Text(
                          'Add new patient',
                          style: TextStyle(color: Colors.white,fontSize: 16),
                        )),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Text('OR'),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 20),
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(context, '/navigationBar');
                        },
                        child: Text(
                          'Select from list',
                          style: TextStyle(color: Colors.white,fontSize: 16),
                        )),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                )
              ],
            )
        ),
      ),
    );
  }

}