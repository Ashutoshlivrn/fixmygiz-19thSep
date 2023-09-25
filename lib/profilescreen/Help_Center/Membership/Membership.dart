import 'package:fixmygiz/profilescreen/Help_Center/Membership/Benefits_Of_Membership/Benefits_Of_Membership.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Membership/Buy_The_Membership/Buy_The_Membership.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Membership/Cancel_Membership/Cancel_Membership.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Membership/Cash_On_Delivery/Cash_On_Delivery.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Membership/Money_Return_Guarantee/Money_Return_Guarantee.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Membership/Pause_Membership/Pause_Membership.dart';
import 'package:fixmygiz/profilescreen/Help_Center/Membership/Share_Membership/Share_Membership.dart';
import 'package:flutter/material.dart';

import '../../../widgets/separator.dart';
import 'Max_Discount_By_FMG/Max_Discount_By_FMG.dart';

class Membership extends StatefulWidget {
  const Membership({super.key});

  @override
  State<Membership> createState() => _MembershipState();
}

class _MembershipState extends State<Membership> {
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    return Scaffold(
   body: SingleChildScrollView(
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         SizedBox(height: size10 * 2,),
         IconButton(onPressed: () {
           Navigator.of(context).pop();
         }, icon:  Icon(Icons.arrow_back_rounded)),
         SizedBox(height: size10 * 2.2,),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: size10*1.2),
           child: Text('Fix My Giz Plus membership',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
         ),
         SizedBox(height: size10* 1.1 ,),
         UnPaddedSmallSeparator(),


         SizedBox(height: size10* 2.2 ,),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: size10*1.2),
           child: Text('Purchase',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
         ),

         SizedBox(height: size10* 1.1 ,),
         InkWell(
           onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  BenefitsOfMembership() ,));
           },
           child: ListTile(
             title: Transform.translate( offset: Offset( 0 , 0),child: Text('What are the benefits of the membership?',
                 style: TextStyle(height: 1.4, fontSize: 15)  )),
             trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
           ),
         ),
         SmallSeparator(),


         SizedBox(height: size10* 0.5 ,),
         InkWell(
           onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  MaxDiscountByFixMyGiz(),));
           },
           child: ListTile(
             title: Transform.translate( offset: Offset( 0 , 0),child: Text('What is the maximum discount that I can get by using Fix My Giz Plus?',
               style: TextStyle(height: 1.4 , fontSize: 15 )  ,)),
             trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
           ),
         ),
         SizedBox(height: size10* 0.8 ,),
         SmallSeparator(),

         SizedBox(height: size10 * 0.7 ,),
         InkWell(
           onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  MoneyReturnGurantee() ,));
           },
           child: ListTile(
             title: Transform.translate( offset: Offset( 0 , 0),child: Text('How does the 100% money-back guarantee work?',
                 style: TextStyle(height: 1.4, fontSize: 15 ))),
             trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
           ),
         ),
         SizedBox(height: size10 * 0.1 ,),
         SmallSeparator(),



         SizedBox(height: size10 * 0.3 ,),
         InkWell(
           onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => BuyTheMembership()  ,));
           },
           child: ListTile(
             title: Transform.translate( offset: Offset( 0 , 0),child: const Text('How do I buy the membership?',
                 style: TextStyle(height: 1.4,fontSize: 15))),
             trailing: const Icon(Icons.arrow_forward_ios_rounded,size: 16,),
           ),
         ),
         SizedBox(height: size10 * 0.1,),
         SmallSeparator(),




         SizedBox(height: size10 * 0.3 ,),
         InkWell(
           onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => CashOnDelivery() ,));
           },
           child: ListTile(
             title: Transform.translate( offset: Offset( 0 , 0),child: Text('Can I pay for membership with cash on delivery?',style: TextStyle(height: 1.4,fontSize: 15))),
             trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
           ),
         ),
         SizedBox(height: size10 * 0.5,),
         SmallSeparator(),



         SizedBox(height: size10 * 0.3 ,),
         InkWell(
           onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => ShareMemberhsip() ,));
           },
           child: ListTile(
             title: Transform.translate( offset: Offset( 0 , 0),child: Text('Can I share membership with family?',
                 style: TextStyle(height: 1.4,fontSize: 15))),
             trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
           ),
         ),
         SizedBox(height: size10 * 0.4,),


         UnPaddedSmallSeparator(),
         UnPaddedSmallSeparator(),
         UnPaddedSmallSeparator(),
         UnPaddedSmallSeparator(),


         SizedBox(height: size10* 2.2 ,),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: size10*1.2),
           child: Text('Purchase',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
         ),
         SizedBox(height: size10* 1.1 ,),


         InkWell(
           onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => CancelMembership()  ,));
           },
           child: ListTile(
             title: Transform.translate( offset: Offset( 0 , 0),child: Text('How do I cancel my memberhsip plan?',
                 style: TextStyle(height: 1.4,fontSize: 15))),
             trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
           ),
         ),
         SizedBox(height: size10 * 0.1,),
         SmallSeparator(),

         SizedBox(height: size10 * 0.1 ,),
         InkWell(
           onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  PauseMembership() ,));
           },
           child: ListTile(
             title: Transform.translate( offset: Offset( 0 , 0),child: Text('Can I pause my membership?',
                 style: TextStyle(height: 1.4,fontSize: 15))),
             trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
           ),
         ),
         SizedBox(height: size10 * 0.1,),







       ],
     ),
   ),
    );
  }
}
