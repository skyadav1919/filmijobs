import 'package:filmijobs/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);
  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 30, 8, 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          "assets/images/Logo.png",
                          fit: BoxFit.fill,
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome to',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Filmi Jobs!',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ],
                    )
                  ],
                ),
                rectangularcard(
                    Image(image: AssetImage('assets/images/you.png',),fit: BoxFit.cover),
                    "If you are an Actor/Model,this is for you"),
                rectangularcard(
                    Image(image: AssetImage('assets/images/register.png',),fit: BoxFit.cover),
                    "Register all your details with us"),
                rectangularcard(
                    Image(image: AssetImage('assets/images/profile-get-started.png',),fit: BoxFit.cover),
                    "Registration charges based on % of your profile completion"),
                rectangularcard(
                    Image(image: AssetImage('assets/images/charges.png',),fit: BoxFit.cover),
                    "100% Profile completion will help you avail free Registration"),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'GET STARTED',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
  Widget rectangularcard(Widget icon, String text) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Container(
              alignment: Alignment.center,
              // height: size.height * 0.1,
              width: size.width * 1,
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
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.only(top: 25, bottom: 15),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: size.width*0.4,
          top: 0,
          child: Container(
              height: 70,
              width: 70,
              child: Container(child: icon,)),
        ),
      ],
    );
  }
}
