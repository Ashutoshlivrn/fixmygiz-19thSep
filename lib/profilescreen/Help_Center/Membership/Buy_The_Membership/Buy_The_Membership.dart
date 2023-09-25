import 'package:flutter/material.dart';

import '../../../../common/constants.dart';
import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';

class BuyTheMembership extends StatefulWidget {
  const BuyTheMembership({super.key});

  @override
  State<BuyTheMembership> createState() => _BuyTheMembershipState();
}

class _BuyTheMembershipState extends State<BuyTheMembership> {
  @override
  Widget build(BuildContext context) {

    var size10 = MediaQuery.of(context).size.height / 55;
    Widget points( String text){
      return   Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 8),
            height: 5,
            width: 5,
            decoration: BoxDecoration(shape: BoxShape.circle,color: black),
          ),
          SizedBox(width: size10 ,),
          SizedBox(
              width: size10 * 22,
              child: Text(text ,
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600)))
        ],
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size10 * 3,),
            IconButton(onPressed: () {
              Navigator.of(context).pop();
            }, icon:  Icon(Icons.arrow_back_rounded)),
            SizedBox(height: size10 * 2.2,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size10*1.2),
              child: Text('How do I buy the membership?',style: TextStyle(fontSize: 24.5,fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: size10* 1.3 ,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size10*1.2),
              child: Text(
                  'To buy Fix My Giz Plus membership:'
                ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,height: 1.3, color: Colors.grey.shade600),),
            ),
            SizedBox(height: size10 * 2 ,),



            Padding(
              padding: EdgeInsets.only(left: size10 * 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  points( 'Select the service of your choice.'),
                  SizedBox(height: size10 * 0.7,),

                  points(  'During checkout you have an option to choose between annual and half-yearly membership plans.'),
                  SizedBox(height: size10 * 0.7,),

                  points('Once your booking is placed successfully, Fix My Giz membership will be activated.' ),
                  SizedBox(height: size10 * 0.7,),


                ],
              ),
            ),

            SizedBox(height: size10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size10*1.2),
              child: Text('Please note that the membership can only be activated when payment is made online.'

                ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
            ),
            SizedBox(height: size10 * 2 ,),

            UnPaddedSmallSeparator(),
            SizedBox(height: size10,),
            ArticleHelpful(),
            SizedBox(height: size10,),




          ],
        ),
      ),
    );  ;
  }
}
