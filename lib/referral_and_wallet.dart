import 'package:filmijobs/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ReferralAndWallet extends StatefulWidget {
  const ReferralAndWallet({Key? key}) : super(key: key);

  @override
  State<ReferralAndWallet> createState() => _ReferralAndWalletState();
}

class _ReferralAndWalletState extends State<ReferralAndWallet> {
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
        title: Text('Referral & Wallet',style: TextStyle(color: Color(0xff585858)),),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(CupertinoIcons.bell,color: Colors.black54,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
                height: size.height*0.35,
                width: size.width*0.85,
                child: Image.asset('assets/images/referralwallet.png')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: size.width*0.70,
                    height: size.height*0.05,
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
                      padding: const EdgeInsets.only(left: 10,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('F1919FGR'),
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.copy_rounded,color: Colors.black54,))
                        ],
                      ),
                    )
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Icon(Icons.share,color: Colors.white,size: 15,),
                )
              ],
            ),
            SizedBox(height: 30,),
            Text('Refer a Friend to Fetch Rewards',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17),),
            Text('Give a friend 5 points and get \n'
                'yourself 20 points, when they \n '
                'register on the application from your\n'
                'referal code.',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w700,),textAlign: TextAlign.center,),
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                        height: size.height*0.2,
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
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: size.height*0.08,
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
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
                                    Icon(Icons.info_outline),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15,),
                              InkWell(
                                onTap: (){
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    'Send withdrawal request',
                                    style: TextStyle(
                                        color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                    SizedBox(height: 12.5)
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: size.width*0.25,
                  child: Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: size.width*0.32,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Point History',
                          style: TextStyle(
                              color: Colors.white),
                        ),
                        CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.arrow_forward_rounded,color: Colors.red,size: 18,),
                        )
                      ],
                    ),
                  ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
