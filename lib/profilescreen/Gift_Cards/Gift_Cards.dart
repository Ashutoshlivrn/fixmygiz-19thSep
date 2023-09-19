import 'package:fixmygiz/common/constants.dart';
import 'package:flutter/material.dart';

class Gift_Cards extends StatefulWidget {
  const Gift_Cards({super.key});

  @override
  State<Gift_Cards> createState() => _Gift_CardsState();
}

class _Gift_CardsState extends State<Gift_Cards> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0.0,
            pinned: true,
            backgroundColor: Colors.yellow,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Gift Card'),
              background: Image.asset('images/saloonformen.jpg',fit: BoxFit.cover, ),
            ),
          ),
          SliverAppBar(
            pinned: true,
            primary: false,
            elevation: 8.0,
            backgroundColor: white,
            title: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(text: 'Received Cards',),
                  Tab(text: 'Sent Cards',),
                ],


              ),
            ),
          )
        ],

      ),
    );
  }
}
