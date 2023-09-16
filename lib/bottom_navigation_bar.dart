import 'package:fixmygiz/Beauty/BeautyScreen.dart';
import 'package:fixmygiz/HomesScreen/Home_Services.dart';
import 'package:fixmygiz/home_screen/home_screen.dart';
import 'package:fixmygiz/home_screen/home_screen2.dart';
import 'package:fixmygiz/profilescreen/profile_screen.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}


class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int index = 0;
  List screens = [
    HomeScreen2(),
    BeautyScreen(),
    Homes_Services(),
    const Center(child: Text('Rewards Screen'),),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        elevation: 30,
        type: BottomNavigationBarType.shifting,
        //showSelectedLabels: true,
        showUnselectedLabels: true,
       unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
          selectedLabelStyle: const TextStyle(color: Colors.black),
          unselectedLabelStyle: const TextStyle(color: Colors.grey),
          onTap: (int navindex){
          setState(() {
            index= navindex;
          });
          },

          items:[
        BottomNavigationBarItem(icon: Image.asset('images/home-2.png',width: size.width*0.08,color: index==0?Colors.black:Colors.grey,),label: 'Home'),
        BottomNavigationBarItem(icon: Image.asset('images/booking.png',width: size.width*0.08,color: index==1?Colors.black:Colors.grey,),label: 'Beauty'),
        BottomNavigationBarItem(icon: Image.asset('images/category.png',width: size.width*0.08,color: index==2?Colors.black:Colors.grey,),label: 'Homes'),
        BottomNavigationBarItem(icon: Image.asset('images/wallet.png',width: size.width*0.08,color: index==3?Colors.black:Colors.grey,),label: 'Rewards'),
        BottomNavigationBarItem(icon: Image.asset('images/user.png',width: size.width*0.08,color: index==4?Colors.black:Colors.grey,),label: 'Account'),
      ] ),

    );
  }
}
