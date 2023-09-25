import 'package:fixmygiz/profilescreen/Help_Center/Account/Saved_Payment_Details/Saved_Payment_Details.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Payment_Credits/Check_Balance/Check_Balance.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Payment_Credits/Extend_Rewards/Extend_Rewards.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Payment_Credits/Referral_Not_Received/Referral_Not_Received.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Payment_Credits/Referral_Working/Referral_Working.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Payment_Credits/See_Payment_Details/See_Payment_Details.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Payment_Credits/Unable_Payment/Unable_Payment.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Payment_Credits/Use_Credits/Use_Credits.dart';
import 'package:flutter/material.dart';

import '../../../widgets/separator.dart';


class PaymentCredits extends StatefulWidget {
  const PaymentCredits({super.key});

  @override
  State<PaymentCredits> createState() => _PaymentCreditsState();
}

class _PaymentCreditsState extends State<PaymentCredits> {
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    return Scaffold(
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
            child: Text('Payment & Fix My Giz Credits',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 1.1 ,),
          UnPaddedSmallSeparator(),


          SizedBox(height: size10* 0.6 ,),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => UnablePayment() ,));
            },
            child: ListTile(
              title: Transform.translate( offset: Offset( 0 , 0),child: Text('I am unable to make payment')),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
            ),
          ),
          SmallSeparator(),


          SizedBox(height: size10* 0.5 ,),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheckBalance() ,));
            },
            child: ListTile(
              title: Transform.translate( offset: Offset( 0 , 0),child: Text('How do I check my wallet balance?',
                style: TextStyle(height: 1.4)  ,)),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
            ),
          ),
          SizedBox(height: size10* 0.4 ,),
          SmallSeparator(),

          SizedBox(height: size10 * 0.1 ,),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => UseCredits() ,));
            },
            child: ListTile(
              title: Transform.translate( offset: Offset( 0 , 0),child: Text('How do I use my Fix My Giz credits?')),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
            ),
          ),
          SmallSeparator(),



          SizedBox(height: size10 * 0.1 ,),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ExtendRewards()  ,));
            },
            child: ListTile(
              title: Transform.translate( offset: Offset( 0 , 0),child: const Text('Can I extend the validity of the rewards?',
                  style: TextStyle(height: 1.4))),
              trailing: const Icon(Icons.arrow_forward_ios_rounded,size: 16,),
            ),
          ),
          SizedBox(height: size10 * 0.1,),
          SmallSeparator(),




          SizedBox(height: size10 * 0.1 ,),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ReferralWorking() ,));
            },
            child: ListTile(
              title: Transform.translate( offset: Offset( 0 , 0),child: Text('How does referral work?',style: TextStyle(height: 1.4))),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
            ),
          ),
          SizedBox(height: size10 * 0.1,),
          SmallSeparator(),



          SizedBox(height: size10 * 0.1 ,),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ReferralNotReceived() ,));
            },
            child: ListTile(
              title: Transform.translate( offset: Offset( 0 , 0),child: Text('I have not received a reward for referral',style: TextStyle(height: 1.4))),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
            ),
          ),
          SizedBox(height: size10 * 0.1,),
          SmallSeparator(),



          SizedBox(height: size10 * 0.1 ,),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SeePaymentDetails() ,));
            },
            child: ListTile(
              title: Transform.translate( offset: Offset( 0 , 0),child: Text('Where can I see my saved payment details?',style: TextStyle(height: 1.4))),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
            ),
          ),
          SizedBox(height: size10 * 0.1,),
          SmallSeparator(),








        ],
      ),
    );
  }
}
