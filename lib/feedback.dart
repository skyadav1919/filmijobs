import 'package:filmijobs/color_constants.dart';
import 'package:filmijobs/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Feedback_page extends StatefulWidget {
  const Feedback_page({Key? key}) : super(key: key);

  @override
  State<Feedback_page> createState() => _Feedback_pageState();
}

class _Feedback_pageState extends State<Feedback_page> {
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Feedback',style: TextStyle(color: Color(0xff585858)),),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(CupertinoIcons.bell,color: Colors.black54,))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                controller: email,
                title: 'Email Id  ',
                isRequired: true,
                keyboardType: TextInputType.emailAddress,
              ),
              CustomTextField(
                controller: number,
                title: 'Number  ',
                isRequired: true,
                keyboardType: TextInputType.emailAddress,
              ),
              Stack(
                children: [
                  Text(
                    'Description  ',
                    style:
                        GoogleFonts.montserrat(
                          color: ColorConstants.textColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                    Positioned(
                      right: 0,
                      top: 2,
                      child: Icon(
                        CupertinoIcons.staroflife_fill,
                        color: Colors.red,
                        size: 8,
                      ),
                    )
                ],
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 3,
                child: TextFormField(
                  maxLines: 7,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(15,10,15,10),
                      border: InputBorder.none
                  ),
                ),
              ),
              SizedBox(height: size.height*0.15,),
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
    ));
  }
}
