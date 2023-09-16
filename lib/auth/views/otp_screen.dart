import 'package:fixmygiz/home_screen/home_screen.dart';
import 'package:fixmygiz/widgets/subtilte.dart';
import 'package:fixmygiz/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:gap/gap.dart';

import '../../bottom_navigation_bar.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('Login / SignUp', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
       body: Padding(
         padding: const EdgeInsets.all(16.0),
         child: SizedBox(
           width: size.width,
           height: size.height,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               const Gap(40),
               const TitleTextWidget(title: 'Enter Verification Code'),
               const Gap(10),
               const Subtitle(subtile: 'We have sent yo a 4 digit verification code on'),
               const Gap(10),
               const Text('+9112345678'),
               const Gap(10),

               OtpTextField(
                 fieldWidth: 60,
                 keyboardType: TextInputType.number,
                 numberOfFields: 4,
                 borderColor: Color(0xFF512DA8),
                 //set to true to show as box or false to show as dash
                 showFieldAsBox: true,
                 //runs when a code is typed in
                 onCodeChanged: (String code) {
                   //handle validation or checks here
                 },
                 //runs when every textfield is filled
                 onSubmit: (String verificationCode){
                   showDialog(
                       context: context,
                       builder: (context){
                         return AlertDialog(
                           title: const Text("Verification Code"),
                           content: Text('Code entered is $verificationCode'),
                         );
                       }
                   );
                 }, // end onSubmit
               ),
               const Gap(20),
               SizedBox(
                 width: size.width,
                   height: 45,
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(backgroundColor: Colors.black),

                       onPressed: (){
                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                           return const MyBottomNavigationBar();
                         }));
                       }, child: Text("Verify"))),
               const Gap(20),
               const Text("Didn't receive a code?"),
               TextButton(onPressed: (){

               }, child: const Text('Resend',style: TextStyle(color: Colors.black),)),
             ],
           ),
         ),
       ),
    );
  }
}
