
import 'package:fixmygiz/common/constants.dart';
import 'package:fixmygiz/widgets/separator.dart';
import 'package:flutter/material.dart';

//mimi part

class My_Wallet extends StatefulWidget {
  const My_Wallet({super.key});

  @override
  State<My_Wallet> createState() => _My_WalletState();
}

class _My_WalletState extends State<My_Wallet> {
  bool isExpanded = false;

  void _toggleExpand() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_rounded,color: white,),),
        title: Text('My Wallet',style: TextStyle(color: white,fontWeight: FontWeight.w500,fontSize: 18),),
      ),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Container(
                height: size10*10.7,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/icons/refer_and_earn.png'),fit: BoxFit.fill)),
                ) ,
              const Separator(),
              const Separator(),
              Container(
               padding: const EdgeInsets.all(10),
               height: size10 * 9.5,
               width: MediaQuery.of(context).size.width,

               child: Row(
                     children: [
                       IconButton(onPressed: () {}, icon: Icon(Icons.wallet,color: Colors.orangeAccent,size: 40,) ),
                        SizedBox(width: size10 *1.2,),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('UC Cash',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),
                                SizedBox(width: size10* 12.5,),
                               Text('Rs 0',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),
                             ],
                           ),
                            SizedBox(height: size10 *0.7,),
                           SizedBox(
                               width: size10 * 18,
                               child: Text('Formerly UC Credits. Applicable on all services')),

                         ],
                       )
                     ],
               ),
             ),
              const Separator(),
               SizedBox(height: size10,),

        GestureDetector(
          onTap: _toggleExpand,
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(' Have a question?'),
                Spacer(),
                Icon(
                  isExpanded ? Icons.keyboard_arrow_down_rounded: Icons.keyboard_arrow_right_rounded ,
                ),
              ],
            ),
          ),
        ),
            Visibility(
               visible: isExpanded? true:false,
              child: Container(
                padding: EdgeInsets.all(size10*1.2),
                width: MediaQuery.of(context).size.width,
                // 17 customer id
                // 18  billing id
                color: Colors.grey.shade100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('I have UC Credits. What happens to them now?',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                    SizedBox(height: size10/2,),
                    Text('All UC Credits have been converted to UC Cash. They are applicable on all services.',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,height: 1.3 ),),
                    SizedBox(height: size10*1.2,),


                    Text('What is UC Cash?',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                    SizedBox(height: size10/2,),
                    Text('UC cash is given by us as a part of our customer experience programs. It is redeemable across all categories'
                        ' and is valid for 1 year from date of issue.',
                      style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,height: 1.3 ),),
                    SizedBox(height: size10*1.2,),



                    Text('What is UC Rewards?',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                    SizedBox(height: size10/2,),
                    Text('UC reward points are given us as part of promotional campaigns so that users like you can try out our flagship services.'
                        'They are applicable on selected categories only as mentioned on the rewards',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,height: 1.3 ),),
                    SizedBox(height: size10*1.2,),




                    Text('Are there any other important terms and Conditions?',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                    SizedBox(height: size10/2,),
                    Text('Yes: 1. Reward points can\'t be clubbed with other ongoing UC offers; however third party offers like Amazon'
                        'Pay can be combined. 2. Locked date slots can\'t be unlocked using rewards/ UC cash; but you can use your '
                        'rewards after service on the final bill after service delivery in such cases. 3. Rewards will expire '
                        'irrespective of service delivery date - the expiry date will not change even if service delivery window is long.'
                        'It is thus adviced to use pre- payment options to avail rewards in such cases. 4. Rewards/Cash won\'t be applicable on cash payments. '
                      ,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,height: 1.3 ),),
                    SizedBox(height: size10*1.2,),

                  ],
                ),
              ),
            ),
          SizedBox(height: size10*1.2,),
          const SmallSeparator(),
            SizedBox(height: size10*1.8,),
          const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Wallet activity'),
          ),
            SizedBox(height: size10*1.5,),
          const SmallSeparator(),




          ],
        ),
      )  ,
    );
  }
}



