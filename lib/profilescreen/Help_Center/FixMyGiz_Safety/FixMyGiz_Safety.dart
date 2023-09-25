import 'package:fixmygiz/widgets/separator.dart';
import 'package:flutter/material.dart';

class FixMyGizSafety extends StatefulWidget {
  const FixMyGizSafety({super.key});

  @override
  State<FixMyGizSafety> createState() => _FixMyGizSafetyState();
}

class _FixMyGizSafetyState extends State<FixMyGizSafety> {

  Widget dotContainer(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Container(
        height: 4,
        width: 4,
        decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size10 = MediaQuery.of(context).size.height / 55;
    return Scaffold(
   body: SingleChildScrollView(
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         SizedBox(height: size10 * 2,),
         IconButton(onPressed: () {
           Navigator.of(context).pop();
         }, icon:  Icon(Icons.arrow_back_rounded)),
         SizedBox(height: size10 * 2.2,),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: size10*1.2),
           child: Text('Know more about Fix My Giz\'s safety measures',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500),),
         ),
         SizedBox(height: size10* 2 ,),

         Padding(
           padding: const EdgeInsets.only(left: 20),
           child: SizedBox(width: size10 * 22 ,child: Text('At Fix My Giz, the safety of customers and professionals is taken extremely seriously.'
               'To ensure this, we have taken the following precautionary measures:',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black87,fontSize: 15, height: 1.5 ) ,) ,),
         ),


         SizedBox(height: size10 ,),
     Padding(
       padding: const EdgeInsets.only(left: 20),
       child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           dotContainer(),
           SizedBox(width: size10 * 1.2,),
           SizedBox(width: size10 * 22 ,child: Text('We conduct background verification on all our professionals',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black87,fontSize: 15, height: 1.3 ) ,) ,),
         ],
       ),
     ),
         SizedBox(height: size10 * 0.5,),
         Padding(
           padding: const EdgeInsets.only(left: 20),
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               dotContainer(),
               SizedBox(width: size10 * 1.2,),
               SizedBox(width: size10 * 22 ,child: Text('In case of any critical support, SOS button is available'
                   ' in app for both our customers and professionals.',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black87,fontSize: 15, height: 1.3 ) ,) ,),
             ],
           ),
         ),
         SizedBox(height: size10 * 2.5,),
         UnPaddedSmallSeparator(),
         SizedBox(height: size10 * 0.5,),

         Padding(
           padding:  EdgeInsets.symmetric(horizontal: size10,vertical: size10  ),
           child: Row(
             children: [
               Text(' Was this article helpful?',style: TextStyle(color: Colors.grey.shade700,fontSize: 16),),
               Spacer(),
               IconButton(onPressed: () {

               },icon:Icon(Icons.thumb_down_alt_outlined,color: Colors.grey.shade500,)),
               SizedBox(width: size10*2,),
               IconButton(onPressed: () {

               },icon:Icon(Icons.thumb_up_alt_outlined,color: Colors.grey.shade500,)),


             ],
           ),
         )




       ],
     ),
   ),
    );
  }
}
