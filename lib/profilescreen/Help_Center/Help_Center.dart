import 'package:fixmygiz/common/constants.dart';
import 'package:fixmygiz/widgets/separator.dart';
import 'package:flutter/material.dart';

class Help_Center extends StatefulWidget {
  const Help_Center({super.key});

  @override
  State<Help_Center> createState() => _Help_CenterState();
}

class _Help_CenterState extends State<Help_Center> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          IconButton(onPressed: () {
            Navigator.of(context).pop();
          }, icon:  Icon(Icons.arrow_back_rounded)),
          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text('How can we help you?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          ),
          const SizedBox(height: 20,),
          Container(
            height: size.height* 0.556,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text('    All topics',style: TextStyle(fontSize: 17),),
                const SizedBox(height: 10,),
                //accounts
                ListTile(
                  leading: Icon(Icons.account_circle,color: black,),
                  title: Transform.translate( offset: Offset(-20, 0),child: Text('Account')),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
                ),
                const SmallSeparator(),
                //getting started with uc
                ListTile(
                  leading: Icon(Icons.icecream_outlined,color: black),
                  title: Transform.translate( offset: Offset(-20, 0),child: Text('Getting started with UC')),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16),
                ),
                const SmallSeparator(),
                //payment and uc credits
                ListTile(
                  leading: Icon(Icons.account_balance_wallet_rounded,color: black),
                  title: Transform.translate( offset: Offset(-20, 0),child: Text('Payment & UC Credits')),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16),
                ),
                const SmallSeparator(),
                //uc plus membership
                ListTile(
                  leading: Icon(Icons.center_focus_weak_rounded,color: black),
                  title: Transform.translate( offset: Offset(-20, 0),child: Text('UC Plus Membership')),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16),
                ),
                const SmallSeparator(),
                //UC Safety
                ListTile(
                  leading: Icon(Icons.safety_check_rounded,color: black),
                  title: Transform.translate( offset: Offset(-20, 0),child: Text('UC Safety')),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16),
                ),
                const SmallSeparator(),
                //Warranty
                ListTile(
                  leading: Icon(Icons.shield_moon_rounded,color: black),
                  title: Transform.translate( offset: Offset(-20, 0),child: Text('Warranty')),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
                ),



              ],
            ),
          )
        ],
      ),
    );
  }
}
