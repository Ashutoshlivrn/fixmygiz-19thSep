import 'package:flutter/material.dart';

import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';

class ServicesCovered extends StatefulWidget {
  const ServicesCovered({super.key});

  @override
  State<ServicesCovered> createState() => _ServicesCoveredState();
}

class _ServicesCoveredState extends State<ServicesCovered> {
  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    Widget points(String num, String text){
      return   Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(num,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600)),
          SizedBox(width: size10 ,),
          SizedBox(
              width: size10 * 22,
              child: Text(text ,
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600)))
        ],
      );
    }

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
            child: Text('Which services are covered under Fix My Giz warranty?',style: TextStyle(fontSize: 24.5,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 1.3 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('Fix My Giz Warranty covers:'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10* 1.8 ,),

          Padding(
            padding: EdgeInsets.only(left: size10 * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                points('1.', 'Hardware repairs like Sim Change, headphone jack, Charging port etc.'),
                SizedBox(height: size10 * 0.7,),

                points('2.', 'Pest control service.' ),
                SizedBox(height: size10 * 0.7,),

                points('3.', 'Painting services' ),
                SizedBox(height: size10 * 0.7,),


              ],
            ),
          ),
          SizedBox(height: size10  ,),
          PaddedSmallSeparator(),

          SizedBox(height: size10  ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('However, the Fix My Giz Warranty does not cover:'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10* 1.2,),

          Padding(
            padding: EdgeInsets.only(left: size10 * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                points('1.', 'Any new issue that occurs post the service.'),
                SizedBox(height: size10 * 0.7,),

                points('2.', 'Any item/service that is not mentioned on the invoice.' ),
                SizedBox(height: size10 * 0.7,),

              ],
            ),
          ),


          SizedBox(height: size10* 2 ,),


          UnPaddedSmallSeparator(),
          SizedBox(height: size10,),
          ArticleHelpful(),





        ],
      ),
    );;

  }
}
