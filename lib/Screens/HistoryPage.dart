import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> with SingleTickerProviderStateMixin{
  List<Map<String,String>> data = [
    {
      'name':'Raj',
      'location' : 'Bhopal',
      'time' : '10:45am-11:00am',
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

  ];
  late TabController _historyTabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _historyTabController = TabController(length: 2, vsync: this,initialIndex: 0);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _historyTabController.dispose();
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
                child: Container(
                  width: width*0.9,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorLight,
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: TabBar(
                    controller: _historyTabController,
                    indicator: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    unselectedLabelColor: Color.fromRGBO(119, 119, 119, 1),
                    unselectedLabelStyle: TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500),
                    labelStyle: TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500),
                    indicatorColor: Theme.of(context).primaryColor,
                    tabs: [
                      Tab(text: "POPD"),
                      Tab(text: 'EOPD',),
                    ],

                  ),
                )),
            Flexible(
              flex: 9,
              child: Container(
                width: width*0.9,
                child: TabBarView(
                    controller: _historyTabController,
                    children: [
                      Container(
                        child: ListView.separated(
                            itemCount: data.length,
                            separatorBuilder: (context,int index) => Divider(height: 2.0,color: Colors.black26,),
                            itemBuilder: (context,int index) => ListTile(
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
                              contentPadding: EdgeInsets.zero,
                              title: Text('${data[index]['name']}',style:TextStyle(fontFamily: "Poppins-SemiBold.ttf",fontWeight: FontWeight.w500), ),
                              subtitle: Text('${data[index]['OPD']}',style: TextStyle(color:Colors.black,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400,fontSize: 11.0),),

                              trailing:  Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(child: Text('${data[index]['time']}',style: TextStyle(color: Theme.of(context).primaryColor,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400),)),
                                  Container(child: Text('${data[index]['date']}',style: TextStyle(color:Colors.black54,fontFamily: "Poppins-Medium.ttf",fontWeight: FontWeight.w400,fontSize: 11.0),)),
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
      ),
    );
  }
}
