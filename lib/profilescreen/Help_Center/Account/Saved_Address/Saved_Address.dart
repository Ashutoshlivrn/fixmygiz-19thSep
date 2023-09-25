import 'package:flutter/material.dart';

import '../../../../common/constants.dart';
import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';


class SavedAddress extends StatefulWidget {
  const SavedAddress({super.key});

  @override
  State<SavedAddress> createState() => _SavedAddressState();
}

class _SavedAddressState extends State<SavedAddress> {
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
            child: Text('Where can I check my saved addresses?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 1.3 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('You can check your saved addresses using the following ways:'
                ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10* 1.8 ,),

          Padding(
            padding: EdgeInsets.only(left: size10 * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('1.',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600)),
                    SizedBox(width: size10 ,),
                    SizedBox(
                        width: size10 * 22,
                        child: Text('While selecting the location on the app homescreen' ,
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600)))
                  ],
                ),
                SizedBox(height: size10 * 0.7,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('2.',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600)),
                    SizedBox(width: size10 ,),
                    SizedBox(
                        width: size10 * 22,
                        child: Text('Check address on the checkout screen before making payment' ,
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600)))
                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: size10* 2 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('Alternatively, you can also click on the below link to check all saved addresses'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10* 2 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Container(
              height: size10 * 2.7,
              width: size10 * 11,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Colors.blue.shade500
              ),
              child: Center(child: Text('My addresses',style: TextStyle(color: white,fontSize: 16,fontWeight: FontWeight.w500),),),
            ),
          ),
          SizedBox(height: size10* 2 ,),
          UnPaddedSmallSeparator(),
          SizedBox(height: size10* 1.4 ,),
          ArticleHelpful(),





        ],
      ),
    );
  }
}
