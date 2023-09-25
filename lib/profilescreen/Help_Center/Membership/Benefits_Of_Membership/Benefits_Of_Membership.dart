import 'package:flutter/material.dart';

import '../../../../common/constants.dart';
import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';


class BenefitsOfMembership extends StatefulWidget {
  const BenefitsOfMembership({super.key});

  @override
  State<BenefitsOfMembership> createState() => _BenefitsOfMembershipState();
}

class _BenefitsOfMembershipState extends State<BenefitsOfMembership> {
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
            child: Text('What are the benefits of the membership?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 1.3 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('Fix My Giz Plus membership comes with a range of benefits that are designed just for you.'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),

          
          SizedBox(height: size10* 2 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text(
              'As a valued member of our community, you\'ll enjoy our ever expanding list of exclusive perks.'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),


          SizedBox(height: size10* 2 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text(
                'To learn more, click the button below'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),

          SizedBox(height: size10* 2 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Container(
              height: size10 * 2.7,
              width: size10 * 13,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Colors.blue.shade500
              ),
              child: Center(child: Text('Check FMG Plus',style: TextStyle(color: white,fontSize: 16,fontWeight: FontWeight.w500),),),
            ),
          ),
          SizedBox(height: size10* 2 ,),
          UnPaddedSmallSeparator(),
          SizedBox(height: size10* 1.4,),
          ArticleHelpful(),


        ],
      ),
    );;
  }
}
