import 'package:filmijobs/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class PointsHistoryDetails extends StatefulWidget {
  const PointsHistoryDetails({Key? key}) : super(key: key);

  @override
  State<PointsHistoryDetails> createState() => _PointsHistoryDetailsState();
}

class _PointsHistoryDetailsState extends State<PointsHistoryDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Card(
            margin: const EdgeInsets.all(6.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            color: ColorConstants.primaryColorLight,
            child: GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            )),
        title: Text('Points History Details',style: TextStyle(color: Color(0xff585858)),),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(CupertinoIcons.bell,color: Colors.black54,))
        ],
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification){
          notification.disallowIndicator();
          return true;
        },
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: size.height*0.08,
              width: size.width*1,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xfffefefe),
                      Color(0xffedeef2),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(width: 1, color: Colors.black12)),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                width: size.width*0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Total Points'),
                    Row(
                      children: [
                        Icon(Icons.account_balance_wallet_rounded,color: Colors.red,),
                        Text('  25,000')
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: size.height*0.75,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.fromLTRB(20,15,20,0),
                child: Container(
                    height: size.height*0.08,
                    width: size.width*1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffDDDDDD),
                            blurRadius: 8,
                            spreadRadius: 0.1,
                            offset: Offset(0, 2),
                          )
                        ],
                        color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('10 Apr 2023, 11:30 AM',style: TextStyle(fontSize: 12,color: Colors.grey),),
                              Text('Point Credit',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                            ],
                          ),
                          Text('+25',style: TextStyle(color:Colors.green,fontWeight: FontWeight.bold),),

                        ],
                      ),
                    )
                ),
              );
            }),
          ),

        ],),
      ),
    );
  }
}
