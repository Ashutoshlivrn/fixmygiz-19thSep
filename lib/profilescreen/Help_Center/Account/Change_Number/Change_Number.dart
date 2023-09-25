import 'package:fixmygiz/common/constants.dart';
import 'package:fixmygiz/widgets/separator.dart';
import 'package:flutter/material.dart';

import '../../Article_Helpful.dart';

class ChangeNumber extends StatefulWidget {
  const ChangeNumber({super.key});

  @override
  State<ChangeNumber> createState() => _ChangeNumberState();
}

class _ChangeNumberState extends State<ChangeNumber> {

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
            child: Text('I want to change my phone number',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 1.3 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('You can change your phone number from the profile section after verifying'
                'it with an OTP',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey),),
          ),
          SizedBox(height: size10* 1.8 ,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Container(
              height: size10 * 2.8,
              width: size10 * 17,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.blue.shade500
              ),
              child: Center(child: Text('Change phone number',style: TextStyle(color: white,fontSize: 16,fontWeight: FontWeight.w500),),),
            ),
          ),
          SizedBox(height: size10* 2 ,),
          UnPaddedSmallSeparator(),
          SizedBox(height: size10* 2 ,),
          ArticleHelpful(),





        ],
      ),
    );
  }
}
