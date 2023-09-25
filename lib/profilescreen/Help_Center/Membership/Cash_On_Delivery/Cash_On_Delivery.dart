import 'package:flutter/material.dart';

import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';


class CashOnDelivery extends StatefulWidget {
  const CashOnDelivery({super.key});

  @override
  State<CashOnDelivery> createState() => _CashOnDeliveryState();
}

class _CashOnDeliveryState extends State<CashOnDelivery> {
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size10 * 3,),
          IconButton(onPressed: () {
            Navigator.of(context).pop();
          }, icon:  Icon(Icons.arrow_back_rounded)),
          SizedBox(height: size10 * 2.2,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('Can I pay for membership with cash on delivery',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 2.2 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('No, the membership can only be activated when payment is made online.'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),

          SizedBox(height: size10* 2.2 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('Once, the membership is activated, you can place the next set of bookings using Cash on Delivery method as well.'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),




          SizedBox(height: size10* 2 ,),
          UnPaddedSmallSeparator(),
          SizedBox(height: size10* 1.3,),
          ArticleHelpful(),


        ],
      ),
    );   ;
  }
}
