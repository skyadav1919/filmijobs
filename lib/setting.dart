import 'package:filmijobs/change_password.dart';
import 'package:filmijobs/contact_us.dart';
import 'package:filmijobs/custom_drawer.dart';
import 'package:filmijobs/feedback.dart';
import 'package:filmijobs/home.dart';
import 'package:filmijobs/joblist.dart';
import 'package:filmijobs/notification.dart';
import 'package:filmijobs/pointshistory.dart';
import 'package:filmijobs/referral_and_wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);
  @override
  State<Setting> createState() => _SettingState();
}
class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Settings',
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
      drawer: Drawer(
          child: CustomDrawer(
        size: Size.square(10),
      )),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: ListView(
          children: [
            SizedBox(
              height: 50,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Change_Password()));
                },
                leading: Icon(
                  Icons.lock_outline_rounded,
                  color: Color(0xff585858),
                ),
                title: Text(
                  'Change Password',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Color(0xff585858)),
                ),
                trailing:
                    Icon(Icons.navigate_next_rounded, color: Colors.black54),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Feedback_page()));
                },
                leading: Icon(
                  Icons.chat_outlined,
                  color: Color(0xff585858),
                ),
                title: Text(
                  'Feedback',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Color(0xff585858)),
                ),
                trailing:
                    Icon(Icons.navigate_next_rounded, color: Colors.black54),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => JobList()));
                },
                leading: Icon(
                  Icons.info_outline,
                  color: Color(0xff585858),
                ),
                title: Text(
                  'About Us',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Color(0xff585858)),
                ),
                trailing:
                    Icon(Icons.navigate_next_rounded, color: Colors.black54),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactUs()));
                },
                leading: Icon(
                  Icons.perm_phone_msg_outlined,
                  color: Color(0xff585858),
                ),
                title: Text(
                  'Contact Us',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Color(0xff585858)),
                ),
                trailing:
                    Icon(Icons.navigate_next_rounded, color: Colors.black54),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                leading: Icon(
                  Icons.privacy_tip_outlined,
                  color: Color(0xff585858),
                ),
                title: Text(
                  'Privacy Policy',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Color(0xff585858)),
                ),
                trailing:
                    Icon(Icons.navigate_next_rounded, color: Colors.black54),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReferralAndWallet()));
                },
                leading: Icon(
                  Icons.list_alt,
                  color: Color(0xff585858),
                ),
                title: Text(
                  'Terms & Conditions',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Color(0xff585858)),
                ),
                trailing:
                    Icon(Icons.navigate_next_rounded, color: Colors.black54),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PointsHistoryDetails()));
                },
                leading: Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Color(0xff585858),
                ),
                title: Text(
                  'Points History',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Color(0xff585858)),
                ),
                trailing:
                    Icon(Icons.navigate_next_rounded, color: Colors.black54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
