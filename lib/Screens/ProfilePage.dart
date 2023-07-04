import 'package:flutter/material.dart';

import '../Widgets/profile_list.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  late TabController _profileTabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _profileTabController =
        TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _profileTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 30,
                width: 30,
                child: Image.asset(
                  'assets/images/logo doctorconnext.png',
                ),
              ),
            ),
          ],
        ),
        body: Container(
          height: height,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  flex: 1,
                  child: Container(
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TabBar(
                      controller: _profileTabController,
                      indicator: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      unselectedLabelColor: Color.fromRGBO(119, 119, 119, 1),
                      unselectedLabelStyle: TextStyle(
                          fontFamily: "Poppins-SemiBold.ttf",
                          fontWeight: FontWeight.w500),
                      labelStyle: TextStyle(
                          fontFamily: "Poppins-SemiBold.ttf",
                          fontWeight: FontWeight.w500),
                      indicatorColor: Theme.of(context).primaryColor,
                      tabs: [
                        Tab(text: "Hospital/Clinic"),
                        Tab(
                          text: 'Doctor',
                        ),
                      ],
                    ),
                  )),
              Flexible(
                flex: 9,
                child: Container(
                  width: width * 0.9,
                  child:
                      TabBarView(controller: _profileTabController, children: [
                        Container(
                      child: ListView(
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    child: Text(
                                      'Hospital / Clinic name',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Poppins-Semibold.ttf",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 55,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Theme.of(context).primaryColor,
                                        width: 1.5),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      'Some Hospital',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Poppins-Medium.ttf",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Lead Doctor',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Poppins-Semibold.ttf",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17),
                                  ),
                                ),
                                Container(
                                  height: 55,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Theme.of(context).primaryColor,
                                        width: 1.5),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Container(
                                      child: Text(
                                        'aaaaaa',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Poppins-Medium.ttf",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Phone Number',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Poppins-Semibold.ttf",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17),
                                  ),
                                ),
                                Container(
                                  height: 55,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Theme.of(context).primaryColor,
                                        width: 1.5),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Container(
                                      child: Text(
                                        '12344444',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Poppins-Medium.ttf",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Email Address',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Poppins-Semibold.ttf",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17),
                                  ),
                                ),
                                Container(
                                  height: 55,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Theme.of(context).primaryColor,
                                        width: 1.5),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Container(
                                      child: Text(
                                        '@gmail.com',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Poppins-Medium.ttf",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'About Hospital / Clinic',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Poppins-Semibold.ttf",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17),
                                  ),
                                ),
                                Container(
                                  height: 200,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Theme.of(context).primaryColor,
                                        width: 1.5),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      'widthFactor: This property takes a double value as a parameter and it sets the Center widgets width as the same as the childs width multiplied by this factor. For example, if it is set to 3.0 then the Center widget will take three times the size of its child widget.',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Poppins-Medium.ttf",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Container(
                            height: 120,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text(
                                          'Opening Time',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily:
                                                  "Poppins-Semibold.ttf",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          'Closing Time',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily:
                                                  "Poppins-Semibold.ttf",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17),
                                        ),
                                      ),
                                      Container(
                                        height: 55,
                                        width: width * 0.9 * 0.4,
                                        alignment: Alignment.centerLeft,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 1.5),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                          child: Container(
                                            child: Text(
                                              '09:30 am',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily:
                                                      "Poppins-Medium.ttf",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}
