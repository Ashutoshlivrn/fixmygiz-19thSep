import 'package:fixmygiz/profilescreen/Payment_Options/Card_Number_Form.dart';
import 'package:flutter/material.dart';

import '../../common/constants.dart';

class PaymentOptions extends StatefulWidget {
  const PaymentOptions({super.key});

  @override
  State<PaymentOptions> createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {

  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    //size*1.4 is height 10
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.arrow_back_rounded,color: black,),onPressed: () {
            Navigator.of(context).pop();
          },),
          title: Text('Manage payment methods',style: TextStyle(color: black),),
          elevation: 1,
        ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: size10 * 5,
              color: Colors.grey.shade200,
              child: const Center(
                child: Text('We will debit Rs.1 to verify a new payment instrument. This will be refunded after verification.',
                  style: TextStyle( fontWeight: FontWeight.w400, fontSize: 13,height: 1.4   ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  SizedBox(height: size10*2,),
                  Padding(
                   padding: EdgeInsets.symmetric(horizontal: size10*1.4),
                   child: Text('Debit or Credit card',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                 ),
                  SizedBox(height: size10*2,),






                 InkWell(
                   onTap: () {
                     showModalBottomSheet(
                       context: context,
                       //enableDrag: false,
                       //isDismissible: true,
                       isScrollControlled: true,
                       backgroundColor: Colors.black12,
                       shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(
                         top: Radius.circular(15),
                       )),
                       builder: (context) {
                         return Padding(
                           padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom,),
                           child:  Container(

                             decoration: BoxDecoration(color: Colors.transparent ,borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10) )),
                             width: MediaQuery.of(context).size.width,
                             child: SingleChildScrollView(
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.end,
                                 children: [
                                    SizedBox(height: MediaQuery.of(context).size.height/2,),
                                   InkWell(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                     child: Padding(
                                       padding:  EdgeInsets.only(right: size10),
                                       child: Container(
                                         height: size10*2.3,
                                         width: size10*2.3,
                                         decoration: const BoxDecoration(
                                           shape: BoxShape.circle,
                                           color: Colors.white,
                                         ),
                                         child: Center(
                                           child: Icon(Icons.close,color: black,),
                                         ),
                                       ),
                                     ),
                                   ),
                                   SizedBox(height: size10*1.4,),
                                   CardNumberForm(),
                                 ],
                               ),
                             ) ,
                           ),
                         );
                       } );
                   },
                   child: ListTile(
                     leading: Container(
                       height: size10 * 3.9,
                       width: size10 * 3.6,
                       decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/icons/add_a_card.png'))),
                     ) ,
                     //Image.asset('images/icons/add_a_card.png'),
                     //Icon(Icons.payment_rounded,size: 26,color: Colors.purple.shade400,),

                     title: const Text('Add a card'),
                     trailing: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
                   ),
                 ),



              ],
            )
          ],
        ),
      ) ,
    );
  }

}
