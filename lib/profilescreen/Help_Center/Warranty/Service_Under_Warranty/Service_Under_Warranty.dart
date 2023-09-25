import 'package:flutter/material.dart';

import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';

class ServiceUnderWarranty extends StatefulWidget {
  const ServiceUnderWarranty({super.key});

  @override
  State<ServiceUnderWarranty> createState() => _ServiceUnderWarrantyState();
}

class _ServiceUnderWarrantyState extends State<ServiceUnderWarranty> {
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;

    return Scaffold(
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
            child: Text('Do I have to pay for the service under warranty?',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 1.8 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('No. You can book a free revisit from the booking screen if the same issue persists during warranty.'
                ' Our professionals will visit your place again to solve the problem with your utmost satisfation'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10* 1.8 ,),



          UnPaddedSmallSeparator(),
          SizedBox(height: size10,),
          ArticleHelpful(),





        ],
      ),
    );;

  }
}
