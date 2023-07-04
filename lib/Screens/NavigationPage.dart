import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:doctorconnext/theme.dart';
class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> with TickerProviderStateMixin {
  late TabController _mainTabController;
 // late TabController _subTabController;

  List<Map<String,String>> data = [
    {
      'name':'Raj',
      'location' : 'Bhopal',
      'time' : '10:45am-11:00am',
      'date' : '23Jan2022',
      'OPD' : 'sdsdOPD'
    },
    {
      'name':'Mohit',
      'location' : 'bhopal',
      'time' : '10:45am-11am',
      'date' : '23Jan2022',
      'OPD' : 'sdsdOPD'
    },
    {
      'name':'Yash',
      'location' : 'bhopal',
      'time' : '10:45am-11am',
      'date' : '23Jan2022',
      'OPD' : 'sdsdOPD'
    },
    {
      'name':'Raj',
      'location' : 'bhopal',
      'time' : '10:45am-11am',
      'date' : '23Jan2022',
      'OPD' : 'sdsdOPD'
    },
    {
      'name':'Veer',
      'location' : 'bhopal',
      'time' : '10:45am-11am',
      'date' : '23Jan2022',
      'OPD' : 'sdsdOPD'
    },
    {
      'name':'Raj',
      'location' : 'bhopal',
      'time' : '10:45am-11am',
      'date' : '23Jan2022',
      'OPD' : 'sdsdOPD'
    },
    {
      'name':'Raj',
      'location' : 'bhopal',
      'time' : '10:45am-11am',
      'date' : '23Jan2022',
      'OPD' : 'sdsdOPD'
    },
    {
      'name':'Harsh',
      'location' : 'bhopal',
      'time' : '10:45am-11am',
      'date' : '23Jan2022',
      'OPD' : 'sdsdOPD'
    },
    {
      'name':'Raj',
      'location' : 'bhopal',
      'time' : '10:45am-11am',
      'date' : '23Jan2022',
      'OPD' : 'sdsdOPD'
    },

  ];

  void initState() {
    // TODO: implement initState
    super.initState();
    _mainTabController = TabController(length:2, vsync: this,initialIndex: 0);
    //_subTabController = TabController(length: 2, vsync: this,initialIndex: 0);

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _mainTabController.dispose();
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
                  'assets/images/logo docbot.png',
                ),
              ),
            ),
          ],
        ),
      body: Container(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex:1,
              child: Container(
                width: width*0.9,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                    borderRadius: BorderRadius.circular(20),

                ),
                child: TabBar(
                  controller: _mainTabController,
                    indicator: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    unselectedLabelColor: Color.fromRGBO(119, 119, 119, 1),
                    unselectedLabelStyle: TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500),
                    labelStyle: TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500),
                    indicatorColor: Theme.of(context).primaryColor,
                    tabs: [
                      Tab(text: 'Upcoming',),
                      Tab(text: 'Pending',),

                ]),
              ),
            ),
            Flexible(
              flex: 9,
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _mainTabController,
                  children: [
                    UpcomingContainer(data: data),
                    PendingContainer(data: data),
                  ],
                ))


          ],
        )

      ),

    );
  }
}


// class ScheduleContainer extends StatefulWidget {
//   final List<Map<String,String>> data;
//   const ScheduleContainer({Key? key, required this.data}) : super(key: key);
//
//   @override
//   _ScheduleContainerState createState() => _ScheduleContainerState(data);
// }
//
// class _ScheduleContainerState extends State<ScheduleContainer> with TickerProviderStateMixin {
//   late TabController _subTabController;
//   final List<Map<String,String>> data;
//
//   _ScheduleContainerState(this.data);
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _subTabController = TabController(length: 2, vsync: this,initialIndex: 0);
//   }
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _subTabController.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Flexible(
//             flex: 1,
//             child: Container(
//               // height: height*0.1,
//               width: width*0.6,
//               child: TabBar(
//                   controller: _subTabController,
//                   unselectedLabelColor: Colors.black,
//                   indicatorSize: TabBarIndicatorSize.tab,
//                   labelColor: Theme.of(context).primaryColor,
//                   indicatorColor: Theme.of(context).primaryColor,
//                   unselectedLabelStyle: TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500),
//                   labelStyle: TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500),
//                   tabs:[
//                     Tab(text: "POPD",),
//                     Tab(text: 'EOPD',),
//
//                   ]),
//             ),
//           ),
//           Flexible(
//             flex: 8,
//             child: Container(
//               width: width*0.9,
//
//               child: TabBarView(
//                 controller: _subTabController,
//                 children:[
//                   Container(
//                   child: ListView.separated(
//                       itemCount: data.length,
//                       separatorBuilder: (context,int index) => Container(height: 1.0,color: Colors.black26,),
//                       itemBuilder: (context,int index) => ListTile(
//                         contentPadding: EdgeInsets.zero,
//                         title: Text('${data[index]['name']}',style:TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500), ),
//                         subtitle: Text('${data[index]['location']}',style: TextStyle(color:Colors.black,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400,fontSize: 11.0),),
//                         trailing: Text('${data[index]['time']}',style: TextStyle(color: Theme.of(context).primaryColor,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400),),
//
//                       )),
//                 ),
//                   Container(
//                     child: ListView.separated(
//                         itemCount: data.length,
//                         separatorBuilder: (context,int index) => Container(height: 1.0,color: Colors.black26,),
//                         itemBuilder: (context,int index) => ListTile(
//                           contentPadding: EdgeInsets.zero,
//                           title: Text('${data[index]['name']}',style:TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500), ),
//                           subtitle: Text('${data[index]['OPD']}',style: TextStyle(color:Colors.black,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400,fontSize: 11.0),),
//                           trailing: Text('${data[index]['time']}',style: TextStyle(color: Theme.of(context).primaryColor,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400),),
//
//                         )),
//                   ),
//               ]
//               ),
//             ),
//           )
//
//         ],
//       ),
//     );
//   }
// }

class UpcomingContainer extends StatefulWidget {
  final List<Map<String,String>> data;
  const UpcomingContainer({Key? key, required this.data}) : super(key: key);

  @override
  _UpcomingContainerState createState() => _UpcomingContainerState(data);
}

class _UpcomingContainerState extends State<UpcomingContainer> with TickerProviderStateMixin{
  late TabController _subTabController;
  final List<Map<String,String>> data;

  _UpcomingContainerState(this.data);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _subTabController = TabController(length: 2, vsync: this,initialIndex: 0);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _subTabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              // height: height*0.1,
              width: width*0.6,
              child: TabBar(
                  controller: _subTabController,
                  unselectedLabelColor: Colors.black54,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Theme.of(context).primaryColor,
                  indicatorColor: Theme.of(context).primaryColor,
                  unselectedLabelStyle: TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500),
                  labelStyle: TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500),
                  tabs:[
                    Tab(text: "POPD",),
                    Tab(text: 'EOPD',),

                  ]),
            ),
          ),
          Flexible(
            flex: 8,
            child: Container(
              width: width*0.9,
              child: TabBarView(
                controller: _subTabController,
                children: [
                  Container(
                  child: ListView.separated(
                      itemCount: data.length,
                      separatorBuilder: (context,int index) => Divider(height: 2.0,color: Colors.black26,),
                      itemBuilder: (context,int index) => ListTile(
                        onTap: () => Navigator.pushNamed(context, '/patientDetailsPage'),
                        contentPadding: EdgeInsets.zero,
                        title: Text('${data[index]['name']}',style:TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500), ),
                        subtitle: Text('${data[index]['location']}',style: TextStyle(color:Colors.black,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400,fontSize: 11.0),),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(child: Text('${data[index]['time']}',style: TextStyle(color: Theme.of(context).primaryColor,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400,),)),
                            Container(child: Text('${data[index]['date']}',style: TextStyle(color: Colors.black54,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400,fontSize: 11.0),)),
                          ],
                        ),

                      )),
                ),
                  Container(
                    child: ListView.separated(
                        itemCount: data.length,
                        separatorBuilder: (context,int index) => Divider(height: 2.0,color: Colors.black26,),
                        itemBuilder: (context,int index) => ListTile(
                          onTap: () => Navigator.pushNamed(context, '/patientDetailsPage'),
                          contentPadding: EdgeInsets.zero,
                          title: Text('${data[index]['name']}',style:TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500), ),
                          subtitle: Text('${data[index]['OPD']}',style: TextStyle(color:Colors.black,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400,fontSize: 11.0),),

                          trailing:  Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(child: Text('${data[index]['time']}',style: TextStyle(color: Theme.of(context).primaryColor,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400),)),
                              Container(child: Text('${data[index]['date']}',style: TextStyle(color: Colors.black54,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400,fontSize: 11.0),)),
                            ],
                          ),
                        )),
                  ),
              ]
              ),
            ),
          )

        ],
      ),
    );
}

}

class PendingContainer extends StatefulWidget {
  final List<Map<String,String>> data;
  const PendingContainer({Key? key,required this.data}) : super(key: key);

  @override
  _PendingContainerState createState() => _PendingContainerState(data);
}

class _PendingContainerState extends State<PendingContainer> with TickerProviderStateMixin{
  late TabController _subTabController;
  final List<Map<String,String>> data;

  _PendingContainerState(this.data);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _subTabController = TabController(length: 2, vsync: this,initialIndex: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _subTabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              // height: height*0.1,
              width: width*0.6,
              child: TabBar(
                  controller: _subTabController,
                  unselectedLabelColor: Colors.black54,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Theme.of(context).primaryColor,
                  indicatorColor: Theme.of(context).primaryColor,
                  unselectedLabelStyle: TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500),
                  labelStyle: TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500),
                  tabs:[
                    Tab(text: "POPD",),
                    Tab(text: 'EOPD',),

                  ]),
            ),
          ),
          Flexible(
            flex: 8,
            child: Container(
              width: width*0.92,
              child: TabBarView(
                controller: _subTabController,
                children:[
                  Container(
                  child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context,int index) =>
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                              onTap: () => Navigator.pushNamed(context, '/patientDetailsPage'),
                              child: Container(
                        height: height*0.1,
                        width: width*0.85,
                        decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [BoxShadow(color: Colors.black26,blurRadius: 2.0,spreadRadius: 1.0,offset: Offset(2,1))]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          child: Text('${data[index]['name']}',style: TextStyle(fontSize:16,color: Theme.of(context).primaryColorDark,fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500),)),
                                      SizedBox(height: 3.0,),
                                      Container(
                                          child: Text('${data[index]['location']}',style: TextStyle(color:Colors.black,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400,fontSize: 11.0),)),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height:height*0.03,
                                            width: width*0.3,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7.0),
                                              color: Theme.of(context).primaryColorLight,
                                            ),
                                            child: Center(child: Text('Select Time',style: TextStyle(fontSize:10,color: Theme.of(context).primaryColor,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400,),))),
                                      ),
                                      Container(
                                          height:height*0.03,
                                          width: width*0.3,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(7.0),
                                            color: Theme.of(context).primaryColor,
                                          ),
                                          child: Center(child: Text('Approve',style: TextStyle(fontSize:10,color: Theme.of(context).primaryColorLight,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400,),))),
                                    ],
                                  ),
                                ],

                          ),
                        ),

                      ),
                            ),
                          )),
                ),
                  Container(
                    child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context,int index) =>
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: InkWell(
                                onTap: () => Navigator.pushNamed(context, '/patientDetailsPage'),
                                child: Container(
                                  height: height*0.1,
                                  width: width*0.85,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                      boxShadow: [BoxShadow(color: Colors.black26,blurRadius: 2.0,spreadRadius: 1.0,offset: Offset(2,1))]
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  child: Text('${data[index]['name']}',style: TextStyle(fontSize:16,color: Theme.of(context).primaryColorDark,fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500),)),
                                              SizedBox(height: 3.0,),
                                              Container(
                                                  child: Text('${data[index]['location']}',style: TextStyle(color:Colors.black,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400,fontSize: 11.0),)),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 4.0),
                                                child: Container(
                                                    height:height*0.03,
                                                    width: width*0.3,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(7.0),
                                                      color: Theme.of(context).primaryColorLight,
                                                    ),
                                                    child: Center(child: Text('Select Date',style: TextStyle(fontSize:10,color: Theme.of(context).primaryColor,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400,),))),
                                              ),
                                              SizedBox(
                                                height:height*0.03,
                                                width: width*0.3,
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(4.0),
                                                child: Container(
                                                    height:height*0.03,
                                                    width: width*0.3,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(7.0),
                                                      color: Theme.of(context).primaryColorLight,
                                                    ),
                                                    child: Center(child: Text('Select Time',style: TextStyle(fontSize:10,color: Theme.of(context).primaryColor,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400,),))),
                                              ),
                                              Container(
                                                  height:height*0.03,
                                                  width: width*0.3,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(7.0),
                                                    color: Theme.of(context).primaryColor,
                                                  ),
                                                  child: Center(child: Text('Approve',style: TextStyle(fontSize:10,color: Theme.of(context).primaryColorLight,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400,),))),
                                            ],
                                          ),
                                        ),
                                      ],

                                    ),
                                  ),

                                ),
                              ),
                            )),
                  ),
              ]
              ),
            ),
          )

        ],
      ),
    );
  }
}


