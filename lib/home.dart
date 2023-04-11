import 'package:filmijobs/notification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Home',
          style: TextStyle(color: Color(0xff585858)),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationView()));
              },
              icon: Icon(
                CupertinoIcons.bell,
                color: Colors.black54,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Top',style: TextStyle(color: Colors.black54,fontSize: 25,fontWeight: FontWeight.bold),),
                Text('Profiles',style: TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.bold),),

              ],
            ),
            Container(
              height: size.height * 0.22,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                          width: size.width * 0.35,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffDDDDDD),
                                blurRadius: 6.0,
                                spreadRadius: 0.0,
                                offset: Offset(0, 4),
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Column(
                              children: [
                                Container(
                                  height: size.height * 0.12,
                                  width: size.width * 0.25,
                                  decoration: BoxDecoration(
                                      // color: Colors.red,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                      child: Image.asset('assets/images/profileImage.png',fit: BoxFit.cover,)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Text(
                                    'Shubham pandey',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  'Papaya Coders',
                                  style:
                                      TextStyle(fontSize: 8, color: Colors.grey),
                                ),
                              ],
                            ),
                          )),
                    );
                  }),
            ),
            Container(
              height: size.height * 0.5,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: size.width*0.08,),
                              Container(
                                width: size.width*0.85,
                                  height: size.height*0.12,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffe6e6e6),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 55.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Suraj Yadav',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                                      Container(
                                        height: size.height*0.025,
                                        child: Row(
                                          children: [
                                            Text('21'),
                                            VerticalDivider(thickness: 1,color: Colors.black,),
                                            Text('Youtuber'),
                                            VerticalDivider(thickness: 1,color: Colors.black,),
                                            Text('Lucknow'),
                                          ],
                                        ),
                                      ),
                                      Text('Hi bro , this text is only for testing purpose dont focus on it focus on your work',style: TextStyle(color: Colors.grey,fontSize: 10),),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 12,
                            left: 12,
                            child: Container(
                              height: size.height * 0.09,
                              width: size.width * 0.18,
                              decoration: BoxDecoration(
                            // color: Colors.red,
                              borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset('assets/images/profileImage.png',fit: BoxFit.cover,)),
                            ),
                          ),
                          Positioned(
                              right:15,
                              top:5,
                              child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 13,
                            child: Icon(CupertinoIcons.bookmark,color: Colors.black54,size: 15,),
                          ))
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
