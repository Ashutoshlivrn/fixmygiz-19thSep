import 'package:fixmygiz/auth/views/otp_screen.dart';
import 'package:fixmygiz/widgets/showlogo.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ShowLogo(),
              const Gap(10),
              const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white10,
                  filled: true,
                  labelText: 'Enter Your Mobile Number',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
              const Gap(10),
              SizedBox(
                width: size.width,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                    onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (contxt){
                      return OtpScreen();

                    }));
                    }, child: Text("LOG IN")),
              )
            ],
          ),
        ),
      ),

    );
  }
}
