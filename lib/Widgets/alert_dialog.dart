import 'package:flutter/material.dart';


enum AlertDialogType {
  check,
  lock,
  tandc,
  videocall,
  warning,
}

class AlertDialogPage extends StatelessWidget {
  final String path;
  final AlertDialogType type;
  final String title;
  final String content;
  final Widget? image;
  final String buttonLabel;
  final TextStyle titleStyle = TextStyle(
      fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold);

  AlertDialogPage({Key? key,
    required this.path,
    this.title = "",
    required this.content,
    this.image,
    this.type = AlertDialogType.check,
    this.buttonLabel = "Ok"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: Container(
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 220),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 5.0),
                _getIconForType(type),
                //const SizedBox(height: 10.0),
                Divider(),
                Text(
                    content,
                    textAlign: TextAlign.center
                ),
                SizedBox(height: 10.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    // padding: const EdgeInsets.all(5.0),
                    child: Text(buttonLabel),
                    onPressed: () => Navigator.popAndPushNamed(context, path),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
  /*

  */


  _getIconForType(AlertDialogType type) {
    switch (type) {
      case AlertDialogType.check:
        return Image.asset('assets/images/Check.png',width: 120,height:120,);
      case AlertDialogType.lock:
        return Image.asset('assets/images/Lock.png',width: 120,height:120,);
      case AlertDialogType.tandc:
        return Image.asset('assets/images/terms and condition.png',width: 120,height:120,);
      case AlertDialogType.videocall:
        return Image.asset('assets/images/videocall.png',width: 120,height:120,);
      case AlertDialogType.warning:
        return Image.asset('assets/images/warning.png',width: 120,height:120,);
    }
  }
}



class AlertDialogPopPage extends StatelessWidget{
  final String path;
  final AlertDialogType type;
  final String title;
  final String content;
  final Widget? image;
  final String buttonLabel;
  final TextStyle titleStyle = TextStyle(
      fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold);

  AlertDialogPopPage({Key? key,
    required this.path,
    this.title = "",
    required this.content,
    this.image,
    this.type = AlertDialogType.check,
    this.buttonLabel = "Ok"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: Container(
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 220),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 5.0),
                _getIconForType(type),
                //const SizedBox(height: 10.0),
                Divider(),
                Text(
                    content,
                    textAlign: TextAlign.center
                ),
                SizedBox(height: 10.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text(buttonLabel),
                    onPressed: () => Navigator.popUntil(context, ModalRoute.withName(path))
                  ),
                ),
              ],
            ),
          ),
        ));
  }
  /*

  */


  _getIconForType(AlertDialogType type) {
    switch (type) {
      case AlertDialogType.check:
        return Image.asset('assets/images/Check.png',width: 120,height:120,);
      case AlertDialogType.lock:
        return Image.asset('assets/images/Lock.png',width: 120,height:120,);
      case AlertDialogType.tandc:
        return Image.asset('assets/images/terms and condition.png',width: 120,height:120,);
      case AlertDialogType.videocall:
        return Image.asset('assets/images/videocall.png',width: 120,height:120,);
      case AlertDialogType.warning:
        return Image.asset('assets/images/warning.png',width: 120,height:120,);
    }
  }
}





