import 'package:fixmygiz/HomesScreen/HomeServicesItems.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../common/constants.dart';
import '../widgets/ItemsContainer.dart';

class Homes_Services extends StatefulWidget {
  const Homes_Services({super.key});

  @override
  State<Homes_Services> createState() => _Homes_ServicesState();
}

class _Homes_ServicesState extends State<Homes_Services> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //atawa  //1133
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
                      Icon(Icons.settings_suggest,color: Colors.purple.shade600,),
                      const SizedBox(width: 5,),
                      const Text('Home',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 22,),),
                      Text(' services',style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.w600,fontSize: 22),)
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      itemsContainer(text: ' AC Services & Repair '),

                      itemsContainer(text: 'Appliance Repair & Service'),

                      itemsContainer(text: 'IKEA Furniture Assembly'),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      itemsContainer(text: ' Bathroom & kitchen cleaning'),

                      itemsContainer(text: 'Full Home Cleaning'),

                      itemsContainer(text: ' Sofa & Carpet Cleaning'),
                    ],
                  ),
                ),
                const SizedBox(height: 8,),
                HomeServicesItemContainer1()



              ],
            ),
          ),
        ),
      ),
    );

  }
}
