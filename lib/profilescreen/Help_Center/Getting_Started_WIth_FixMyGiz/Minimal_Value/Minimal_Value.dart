import 'package:flutter/material.dart';

import '../../../../widgets/separator.dart';
import '../../Article_Helpful.dart';


class MinimalValue extends StatefulWidget {
  const MinimalValue({super.key});

  @override
  State<MinimalValue> createState() => _MinimalValueState();
}

class _MinimalValueState extends State<MinimalValue> {
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
            child: Text('Do I have to order a minimum value of services before I can place the booking?',style: TextStyle(fontSize: 24.5,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: size10* 1.3 ,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('To ensure efficient use of our professional\'s time, there are minimum order requirements for each category.'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10* 1.8 ,),




          Padding(
            padding: EdgeInsets.symmetric(horizontal: size10*1.2),
            child: Text('if the services you\'ve selected does not meet the minimum order requirement, you will be prompted to add more '
                'services before you can proceed to checkout.'
              ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,height: 1.3, color: Colors.grey.shade600),),
          ),
          SizedBox(height: size10* 2 ,),

          UnPaddedSmallSeparator(),
          SizedBox(height: size10,),
          ArticleHelpful(),





        ],
      ),
    );
  }
}
