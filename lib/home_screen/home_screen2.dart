import 'package:carousel_slider/carousel_slider.dart';
import 'package:fixmygiz/common/constants.dart';
import 'package:fixmygiz/widgets/separator.dart';
import 'package:fixmygiz/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/subtilte.dart';
class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('images/appbar.jpg'),
                const Gap(10),
                const Align(
                  alignment: Alignment.topLeft,
                    child: TitleTextWidget3(title: 'Shaheed Bhagat Singh Airport')),
                const Gap(5),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Subtitle2(subtile: 'Chandigarh- New Civil Air Terminal....',)),
                const Gap(20),
                Container(
                  height: 50,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                   borderRadius: BorderRadius.circular(5),
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
                const Gap(20),
//                 SizedBox(
//                   width: size.width,
//                   height: 70,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Container(
//                         padding: EdgeInsets.all(10),
//                         color: Color.fromRGBO(243, 243, 243, 1),
//                         child: Row(
//                           children: [
//                             Gap(5),
//                             Text('''Women's'
// Salong & Spa '''),
//                             Image.asset('images/icons/womensalon.jpg')
//                           ],
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.all(10),
//                         color: Color.fromRGBO(243, 243, 243, 1),
//                         child: Row(
//                           children: [
//                             Gap(5),
//                             Text('''Men's' Salong
// & Massage '''),
//                             Image.asset('images/icons/womensalon.jpg')
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
                SizedBox(
                  width: size.width,
                  //height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: size.width *0.3,
                            padding: EdgeInsets.all(10),
                            color: primarycolor,
                            child: Image.asset('images/icons/womensalon.jpg',height: 50,),
                          ),
                          Text('''Women's Salon
&Spa''',textAlign: TextAlign.center,)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: size.width *0.3,
                            padding: EdgeInsets.all(10),
                            color: primarycolor,
                            child: Image.asset('images/icons/womensalon.jpg',height: 50,),
                          ),
                          Text('''Men's Salon & 
Applinace''', textAlign: TextAlign.center,)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: size.width *0.3,
                            padding: EdgeInsets.all(10),
                            color: primarycolor,
                            child: Image.asset('images/icons/womensalon.jpg',height: 50,),
                          ),
                          Text('''Ac & 
Applinace
Repair''', textAlign: TextAlign.center,)
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                SizedBox(
                  width: size.width,
                  //height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Column(
                      children: [
                        Container(
                          width: size.width *0.3,
                          padding: EdgeInsets.all(10),
                          color: primarycolor,
                          child: Image.asset('images/icons/womensalon.jpg',height: 50,),
                        ),
                        Text('''Cleaning & 
Pest Control''',textAlign: TextAlign.center,)
                      ],
                    ),
                      Column(
                        children: [
                          Container(
                            width: size.width *0.3,
                            padding: EdgeInsets.all(10),
                            color: primarycolor,
                            child: Image.asset('images/icons/womensalon.jpg',height: 50,),
                          ),
                          Text('''Cleaning & 
Pest Control''')
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: size.width *0.3,
                            padding: EdgeInsets.all(10),
                            color: primarycolor,
                            child: Image.asset('images/icons/womensalon.jpg',height: 50,),
                          ),
                          Text('''Home Painting ''')
                        ],
                      ),
                    ],
                  ),
                ),
                Gap(20),
                Separator(),
                const Gap(20),
                CarouselSlider(
                  items: [
                    //1st Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('images/slider1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('images/slider2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),


                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 150.0,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    aspectRatio: 0.95,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.9,
                  ),
                ),
                const Gap(10),
                const Separator(),
                // const Gap(10),
                //
                // const Align(
                //   alignment: Alignment.topLeft,
                //     child: TitleTextWidget3(title: 'New and noteworthy')),
                // const Gap(10),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Column(
                //       children: [
                //         Image.asset('images/saloonforwomen.jpg',width: size.width*0.32,),
                //         const Text('Salon Luxe'),
                //       ],
                //     ),
                //     Column(
                //       children: [
                //         Image.asset('images/saloonforwomen.jpg',width: size.width*0.32,),
                //         const Text('Salon Luxe'),
                //       ],
                //     ),
                //     Column(
                //       children: [
                //         Image.asset('images/saloonforwomen.jpg',width: size.width*0.32,),
                //         const Text('Salon Luxe'),
                //       ],
                //     ),
                //
                //
                //   ],
                // ),
                const Gap(30),

                const Align(
                    alignment: Alignment.topLeft,
                    child: TitleTextWidget3(title: 'Most Booked Service')),
                const Gap(20),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, int index){
                      return SizedBox(
                        width: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('images/saloonforwomen.jpg',height: 100,),
                            Text('Deep Clean Ac Service and repair'),
                            Text('☆ 4.82(1.1m)'),
                            Text('₹599')
                          ],
                        ),
                      );


                  }),
                ),
                Separator(),
                Gap(20),
                Image.asset('images/banner.jpg'),
                Gap(20),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TitleTextWidget3(title: 'Ac and Appliance Repair'),
                    Text('See all'),
                  ],
                ),

                SizedBox(
                  height: 220,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, int index){
                        return Card(
                          elevation: 5,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            width: 160,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Gap(3),
                                Text('Deep Clean Ac Service and repair',style: TextStyle(fontSize: 18,),),
                                Image.asset('images/acrepairguy.jpg',height: 130,width: size.width,fit: BoxFit.fitWidth,),


                              ],
                            ),
                          ),
                        );


                      }),
                ),
                const Gap(20),

              const Separator(),

                Image.asset('images/bottom.jpg'),


                

                

              ],
            ),
          ),
        ),
      ),
    );
  }
}
