import 'package:fixmygiz/common/constants.dart';
import 'package:fixmygiz/profilescreen/Gift_Cards/tabone/tab_one.dart';
import 'package:fixmygiz/profilescreen/Gift_Cards/tabtwo/tab_two.dart';
import 'package:flutter/material.dart';

class Gift_Cards extends StatefulWidget {
  const Gift_Cards({super.key});

  @override
  State<Gift_Cards> createState() => _Gift_CardsState();
}

class _Gift_CardsState extends State<Gift_Cards> with SingleTickerProviderStateMixin {

  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2,
      vsync: this,
    );
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: white,
            title: Text("Gift Card",style: TextStyle(color: black,fontSize: 18,fontWeight: FontWeight.w500),),
            leading: IconButton(onPressed: () {
              Navigator.of(context).pop();
            }, icon: Icon(Icons.arrow_back_rounded,color: black,) ),
            // pinned: true,
            snap: true,
            floating: true,
            pinned: true,
            expandedHeight: 160.0,
            // **Is it intended ?** flexibleSpace.title overlaps with tabs title.
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Center(child: Text('image will be here',style: TextStyle(color: black),)),
            ),
            bottom: TabBar(
              automaticIndicatorColorAdjustment: false,
              //isScrollable: true,
              indicator: BoxDecoration( border: Border(bottom: BorderSide(color: black,width: 3,style: BorderStyle.solid))  ),
              tabs: [
                Tab(
                  child: Text(
                    'Received Cards',
                    style: TextStyle(
                      color: controller.index == 0
                          ? Colors.black
                          : Colors.grey,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Sent Cards',
                    style: TextStyle(
                      color: controller.index == 1
                          ? Colors.black
                          : Colors.grey,
                    ),
                  ),
                ),
              ],
              controller: controller,
            ),
          ),
          // SliverList(
          SliverFillRemaining(
            child: TabBarView(
              controller: controller,
              children: <Widget>[
                TabOne(),
                TabTwo(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
