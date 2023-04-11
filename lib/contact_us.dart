import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
              icon: Icon(CupertinoIcons.bell,color: Colors.black54,))
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'))),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Container(
              height: size.height*0.4,
              width: size.width*0.75,
                child: Image.asset('assets/images/contactus.png')),
            Container(
              height: size.height*0.09,
              width: size.width*1,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffDDDDDD),
                    blurRadius: 8.0,
                    spreadRadius: 3.0,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Icon(Icons.mail,color: Colors.red,),
                ),
                title: Text('Email Id',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
                subtitle: Text('info@indianFilmhistory.com',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: size.height*0.09,
              width: size.width*1,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffDDDDDD),
                    blurRadius: 8.0,
                    spreadRadius: 3.0,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Icon(Icons.call,color: Colors.red,),
                ),
                title: Text('Contact',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
                subtitle: Text('+91 9123456789',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
              ),
            ),
          ],),
        ),
      ),
    );
  }
}
