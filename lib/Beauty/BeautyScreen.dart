import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fixmygiz/widgets/ItemsContainer.dart';
import 'package:fixmygiz/widgets/separator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../common/constants.dart';
import '../widgets/text_widgets.dart';


class BeautyScreen extends StatefulWidget {
  const BeautyScreen({super.key});

  @override
  State<BeautyScreen> createState() => _BeautyScreenState();
}

class _BeautyScreenState extends State<BeautyScreen> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
        body: SafeArea(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: SingleChildScrollView(
              child: Column( 
                children: [
                  const SizedBox(height: 20,),
                  // row for the text personal grooming
                   Container(
                     padding: EdgeInsets.all(10),
                     child: Row(
                       children: [
                         Icon(Icons.front_hand_rounded,color: Colors.red.shade400,),
                         SizedBox(width: 5,),
                         Text('Personal',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 22,),),
                         Text(' grooming',style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.w600,fontSize: 22),)
                       ],
                     ),
                   ),
                  const SizedBox(height: 20,),
                  // container for search
                  Container(
                    height: 50,
                    width: size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(color: Colors.black),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey,blurRadius: 5)
                      ],
                    ),
                    child: Row(
                      children: const [
                        Gap(10),
                        Icon(Icons.search),
                        Gap(5),
                        Text('Search for',style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 25,),

                  //container for items
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        itemsContainer(text: ' Salon for Women '),

                        itemsContainer(text: 'Spa for women'),

                        itemsContainer(text: 'Hair studio for women'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        itemsContainer(text: ' Salon for Women '),

                        itemsContainer(text: 'Spa for women'),

                        itemsContainer(text: 'Hair studio for women'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  const itemsContainer1(),
                  const Separator(),
                  const SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                    child: Image.asset('images/slider1.jpg'),
                  ),
                  const SizedBox(height: 10,),
                  const Separator(),
                  const SizedBox(height: 25,),
                  const imageSlider(),
                  const SizedBox(height: 25,),
                  const Separator(),
                  const SizedBox(height: 25,),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: const SizedBox(child: Text('  New and noteworthy',style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.w500),),)),
                  const SizedBox(height: 15,),
                  const itemsContainer2(),
                  const SizedBox(height: 15,),
                  const Separator(),
                  const SizedBox(height: 30,),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: const SizedBox(child: Text('  Most booked services',style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.w500),),)),
                  const SizedBox(height: 25,),
                  const itemsContainer3(),
                  const SizedBox(height: 25,),
                  const Separator(),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                     const TitleTextWidget3(title: '  Salon for women'),
                      TextButton(onPressed: () {},child: const Text('See all ',style: TextStyle(color: Colors.purple,fontSize: 15),)),
                    ],
                  ),
                  const SizedBox(
                    height: 400,
                    child: Center(
                      child: itemsContainer4(),
                    ),
                  ), // salon for women
                  const SizedBox(height: 40,),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius:  BorderRadius.all(Radius.circular(10)),
                        child: Image.network('https://imgs.search.brave.com/Zpzxv_7BCLmKWZgBgT508elH-1B50L5RM6kPMK4gwho/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9ibG9n/LnVyYmFuY29tcGFu/eS5jb20vd3AtY29u/dGVudC91cGxvYWRz/LzIwMjMvMDQvV29y/ZHByZXNzLUZlYXR1/cmVkLUltYWdlLTEy/LTEwMjR4NTM2LnBu/Zw'))  ,
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const  Column(
                        children: [
                          TitleTextWidget3(title: 'Hair & Nail services'),
                          SizedBox(height: 4,),
                          Text('    Refreshed style, revamped look')
                        ],
                      ),
                      TextButton(onPressed: () {},child: const Text('See all ',style: TextStyle(color: Colors.purple,fontSize: 15),)),
                    ],
                  ) ,  //hair and nail services
                  const SizedBox(height: 15,),
                  const SizedBox(height: 510,
                    child: itemsContainer5(),
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                        borderRadius:  BorderRadius.all(Radius.circular(10)),
                        child: Image.network('https://imgs.search.brave.com/Zpzxv_7BCLmKWZgBgT508elH-1B50L5RM6kPMK4gwho/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9ibG9n/LnVyYmFuY29tcGFu/eS5jb20vd3AtY29u/dGVudC91cGxvYWRz/LzIwMjMvMDQvV29y/ZHByZXNzLUZlYXR1/cmVkLUltYWdlLTEy/LTEwMjR4NTM2LnBu/Zw'))  ,
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleTextWidget3(title: '  Salon for men'),
                          SizedBox(height: 4,),
                          Text('   Grooming essentials')
                        ],
                      ),
                      TextButton(onPressed: () {},child: const Text('See all ',style: TextStyle(color: Colors.purple,fontSize: 15),)),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const SizedBox(
                    height: 400,
                    child: Center(
                      child: itemsContainer6(),
                    ),
                  ), // salon for women
                  const SizedBox(height: 20,),
                  const Separator(),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleTextWidget3(title: '  Maassage for men'),
                          SizedBox(height: 4,),
                          Text('   Curated massages by top therapists')
                        ],
                      ),
                      TextButton(onPressed: () {},child: const Text('See all ',style: TextStyle(color: Colors.purple,fontSize: 15),)),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  itemsContainer7(),
                  const SizedBox(height: 20,),


                ],
              ),
            ),
          ),
        ),
    );
  }
}
