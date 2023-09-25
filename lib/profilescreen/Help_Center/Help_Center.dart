import 'package:fixmygiz/common/constants.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Account/Accounts.dart';

import 'package:fixmygiz/profilescreen/Help_Center/Membership/Membership.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Payment_Credits/Payment_Credits.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Warranty/Warranty.dart';
import 'package:fixmygiz/widgets/separator.dart';
import 'package:flutter/material.dart';

import 'FixMyGiz_Safety/FixMyGiz_Safety.dart';
import 'Getting_Started_WIth_FixMyGiz/Getting_Started_With_FixMyGiz.dart';

class Help_Center extends StatefulWidget {
  const Help_Center({super.key});

  @override
  State<Help_Center> createState() => _Help_CenterState();
}

class _Help_CenterState extends State<Help_Center> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    var size10 = MediaQuery.of(context).size.height / 55;


    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           SizedBox(height: size10 * 2,),
          IconButton(onPressed: () {
            Navigator.of(context).pop();
          }, icon:  Icon(Icons.arrow_back_rounded)),
           SizedBox(height: size10 * 2.2,),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('How can we help you?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          ),
           SizedBox(height: size10* 1.3 ,),
          Container(
            height: size.height* 0.56,
            //0.556
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size10 * 1.9,),
                Text('    All topics',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                 SizedBox(height:  size10 * 0.5 ,),
                //accounts
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Accounts()  ,));
                  },
                  child: ListTile(
                    leading: Icon(Icons.account_circle,color: black,),
                    title: Transform.translate( offset: Offset(-size10 *1.3 , 0),child: Text('Account')),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
                  ),
                ),
                const SmallSeparator(),



                //getting started with uc
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => GettingStartedWithFixMyGiz()  ,));
                  },
                  child: ListTile(
                    leading: Icon(Icons.icecream_outlined,color: black),
                    title: Transform.translate( offset: Offset(-size10 *1.3, 0),child: Text('Getting started with Fix My Giz')),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16),
                  ),
                ),
                const SmallSeparator(),



                //payment and uc credits
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentCredits()  ,));
                  },
                  child: ListTile(
                    leading: Icon(Icons.account_balance_wallet_rounded,color: black),
                    title: Transform.translate( offset: Offset(-size10 *1.3, 0),child: Text('Payment & Fix My Giz Credits')),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16),
                  ),
                ),
                const SmallSeparator(),


                //uc plus membership
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Membership()  ,));
                  },
                  child: ListTile(
                    leading: Icon(Icons.center_focus_weak_rounded,color: black),
                    title: Transform.translate( offset: Offset(-size10 *1.3, 0),child: Text('Fix My Giz Plus Membership')),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16),
                  ),
                ),
                const SmallSeparator(),


                //UC Safety
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FixMyGizSafety()  ,));
                  },
                  child: ListTile(
                    leading: Icon(Icons.safety_check_rounded,color: black),
                    title: Transform.translate( offset: Offset(-size10 *1.3, 0),child: Text('Fix My Giz Safety')),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16),
                  ),
                ),
                const SmallSeparator(),


                //Warranty
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  Warranty() ,));
                  },
                  child: ListTile(
                    leading: Icon(Icons.shield_moon_rounded,color: black),
                    title: Transform.translate( offset: Offset(-size10 *1.3, 0),child: Text('Warranty')),
                    trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
                  ),
                ),



              ],
            ),
          )
        ],
      ),
    );
  }
}
