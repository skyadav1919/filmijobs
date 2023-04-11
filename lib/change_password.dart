import 'package:filmijobs/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
class Change_Password extends StatefulWidget {
  const Change_Password({Key? key}) : super(key: key);

  @override
  State<Change_Password> createState() => _Change_PasswordState();
}

class _Change_PasswordState extends State<Change_Password> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Change Password',style: TextStyle(color: Color(0xff585858)),),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(CupertinoIcons.bell,color: Colors.black54,))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height:size.height,
          width: size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png',))),
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                CustomTextField(
                  title: 'Old Password',
                  hintText: 'Enter Old Password',
                  suffix: Icon(CupertinoIcons.eye_slash_fill),
                ),
                SizedBox(height: 20,),
                CustomTextField(
                  title: 'New Password',
                  hintText: 'Enter New Password',
                  suffix: Icon(CupertinoIcons.eye_slash_fill),
                ),
                SizedBox(height: 20,),
                CustomTextField(
                  title: 'Conform Password',
                  hintText: 'Re Enter New Password',
                  suffix: Icon(CupertinoIcons.eye_slash_fill),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
