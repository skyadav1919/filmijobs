import 'package:filmijobs/postajobform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class JobList extends StatefulWidget {
  const JobList({Key? key}) : super(key: key);

  @override
  State<JobList> createState() => _JobListState();
}

class _JobListState extends State<JobList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Post a Job',style: TextStyle(color: Color(0xff585858)),),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(CupertinoIcons.bell,color: Colors.black54,))
        ],
      ),
      floatingActionButton: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Post_a_JobForm()));
        },
        child: CircleAvatar(
          backgroundColor: Colors.red,
          radius: 25,
            child: Icon(Icons.add,color: Colors.white,size: 30,)),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 4,
          itemBuilder: (context,int index){
            return Padding(
              padding: const EdgeInsets.fromLTRB(15,15,15,0),
              child: Container(
                width: size.width*0.85,
                height: size.height*0.12,
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffDDDDDD),
                        blurRadius: 8,
                        spreadRadius: 0.1,
                        offset: Offset(0, 0),
                      )
                    ],
                    color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width*0.67,
                        height: size.height*0.12,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Casting for webseries',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500),),
                            Text('Casting for webseries need male and female candidate can apply',style: TextStyle(fontSize: 12,color: Colors.grey,),),
                            Text('Expires on : ',style: TextStyle(fontSize: 14,color: Colors.red,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width*0.20,
                        height: size.height*0.12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Icon(Icons.edit,color: Colors.white,size: 15,),
                          ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Icon(CupertinoIcons.delete_solid,color: Colors.white,size: 15,),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ),);
          }
      ),
    );
  }
}
