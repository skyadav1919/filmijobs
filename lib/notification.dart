import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Contact Us',style: TextStyle(color: Color(0xff585858)),),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(CupertinoIcons.delete_simple,color: Colors.black54,))
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
          itemCount: 6,
          itemBuilder: (context,int index){
            return Padding(
              padding: const EdgeInsets.fromLTRB(15,15,15,0),
              child: Stack(
                children: [
                  Container(
                    height: size.height*0.11,
                    width: size.width*0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red
                    ),
                  ),
                  Positioned(
                    left: 10,
                    child: Container(
                    width: size.width*0.87,
                    height: size.height*0.110,
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffDDDDDD),
                            blurRadius: 8,
                            spreadRadius: 0.1,
                            offset: Offset(5, 0),
                          )
                        ],
                        color: Colors.white
                    ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(5),
                        leading: Padding(
                          padding: const EdgeInsets.only(top: 10,left: 5),
                          child: Icon(Icons.notifications_active,color: Colors.red,),
                        ),
                        title: Text('It is a long established fact that a reader will be distracted by the readable content',
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.calendar_month_outlined,size: 15,),
                            Text('1 january 2023',style: TextStyle(fontSize: 10),)
                          ],
                        )
                      ),
                  ),)
                ],
              ),
            );
          }
      ),
    );
  }
}
