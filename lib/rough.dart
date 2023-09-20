import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class ExpandableContainer extends StatefulWidget {
  @override
  _ExpandableContainerState createState() => _ExpandableContainerState();
}

class _ExpandableContainerState extends State<ExpandableContainer> {
  bool isExpanded = false;

  void _toggleExpand() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleExpand,
      child: Container(
        padding: EdgeInsets.all(12.0),
        color: Colors.blue,
        child: Row(
          children: [
            Text('Leading Text'),
            Spacer(),
            Icon(
              isExpanded ? Icons.keyboard_arrow_down : Icons.arrow_forward,
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expandable Container Example'),
        ),
        body: Column(
          children: [
            ExpandableContainer(),
            Visibility(

              child: Container(
                padding: EdgeInsets.all(12.0),
                color: Colors.grey,
                child: Text('Additional content below'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
